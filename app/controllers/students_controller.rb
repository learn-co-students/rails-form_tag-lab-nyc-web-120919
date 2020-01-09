class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    input = params.require(:student).permit(:first_name, :last_name)
    @student = Student.create(input)
    # byebug
    redirect_to "/students/#{@student.id}"
  end

end
