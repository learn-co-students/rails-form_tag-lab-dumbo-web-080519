class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    render :new
  end

  def create
    # byebug
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])

    # redirect_to students_path
    # byebug
    redirect_to student_path(@student.id)
  end
end
