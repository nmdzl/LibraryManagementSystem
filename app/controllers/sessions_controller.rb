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

  def signup
    @student = Student.new
    render 'sessions/signup'
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

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    log_out
    redirect_to login_path
  end

  def student_params
    params.require(:student).permit(:email, :name, :password, :educational_level, :university, :max_book, :admin, :is_deleted)
  end
end
