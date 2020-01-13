class StudentsController < ApplicationController
  before_action :set_student, only: :show
  def index
    @students = Student.all
  end

  def show
  end
  
  def new 
  end 

  def create 
    session[:form_params] = params.inspect ## from the session, take in params passed through inspection 
    redirect_to new_student_path ## send it to new_student_path
  end 
  private

  def set_student
    @student = Student.find(params[:id])
  end

end
