class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new(params[:student])
  end

  def create
    # byebug
    @student = Student.create(set_student)
    redirect_to student_path(@student)
  end

  private

  def set_student
    params.require(:student).permit(:first_name, :last_name)
  end

end
