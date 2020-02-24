require 'byebug'
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
    if @student.active == true
      @status = 'active' 
    elsif @student.active == false 
      @status = 'inactive'
    end
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == true
       @student.active = false
       @student.save
    else
       @student.active = true
       @student.save
    end
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end