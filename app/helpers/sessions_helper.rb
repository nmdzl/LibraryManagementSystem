module SessionsHelper

  def log_in(student)
    session[:student_id] = student.id
  end

  def log_in_librarian(librarian)
    session[:librarian_id] = librarian.id
  end

  def current_student
    @current_student = @current_student || Student.find_by(id: session[:student_id])
   # @current_librarian = @current_librarian || Librarian.find_by(id: session[:librarian_id])
  end

  def current_librarian
    @current_librarian = @current_librarian || Librarian.find_by(id: session[:librarian_id])
  end

  def logged_in?
    @current_student = current_student
   # @current_librarian = current_librarian
    !@current_student.nil? #|| !@current_librarian.nil?
  end

  def logged_in_librarian?
    @current_librarian = current_librarian
    !@current_librarian.nil?
  end


  def log_out
    session.delete(:student_id)
    @current_student = nil
  end

  def log_out_librarian
    session.delete(:librarian_id)
    @current_librarian = nil
  end

end
