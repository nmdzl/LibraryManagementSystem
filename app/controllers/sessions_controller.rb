class SessionsController < ApplicationController
  skip_before_action :verify_login
  def new
  end

  def create
    student = Student.find_by(email: params[:session][:email].downcase)
    if student && student.authenticate(params[:session][:password])
      log_in student
      redirect_to home_path
    else
      flash.now[:danger] = "Invalid email id or password. Please try again."
      render 'new'
    end

  end


  def create_librarian
    librarian = Librarian.find_by(email: params[:session][:email].downcase)
    if librarian && librarian.authenticate(params[:session][:password])
     log_in_librarian librarian
      redirect_to home_path
    else
      flash.now[:danger] = "Invalid email id or password. Please try again."
      render 'new'
    end
  end

  def signup
    @student = Student.new
    render 'sessions/signup'
  end

  def signup_librarian
    @librarian = Librarian.new
    render 'sessions/signup_librarian'
  end


  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  def new_student
    @student = Student.new(student_params)
    begin
      if @student.save!
        session[:student_id] = @student.id
        logged_in?
        redirect_to home_path
      end
    rescue => error
      logger.debug "ERROR - gaurav"
      flash.now[:danger] = "#{error.message}"
      render 'signup'
    end
  end


  def new_librarian
    @librarian = Librarian.new(librarian_params)
    @librarian.is_approved = false
    begin
      if @librarian.save!
        session[:librarian_id] = @librarian.id
         if logged_in_librarian?
           log_out_librarian
         end
        @librarian_signup_request = LibrarianSignupRequest.new
        @librarian_signup_request.librarian_id = @librarian.id
        @librarian_signup_request.save!
        flash.now[:notice] = 'Your request to sign up as a librarian has been successfully sent to admin.'
       render 'sessions/new'
      end
    rescue
      logger.debug "ERROR - gaurav"
      flash.now[:danger] = "#{error.message}"
      render 'signup_librarian'
    end
  end


  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    log_out
    log_out_librarian
    redirect_to login_path
  end

  def student_params
    params.require(:student).permit(:email, :name, :password, :educational_level, :university, :max_book, :admin, :is_deleted)
  end

  def librarian_params
    params.require(:librarian).permit(:name, :email, :password, :library_id) #:librarian
  end

end
