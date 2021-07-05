class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    #byebug

    if @student.active == true
      @student.update(active: false)
    elsif @student.active == false
      @student.update(active: true)

      redirect_to student_path(@student)
      # if @student.activate
      #   byebug
      # end

    end
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
