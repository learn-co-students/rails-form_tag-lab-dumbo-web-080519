class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(permitted_params)
    redirect_to @student
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def permitted_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
