require 'byebug'
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
    if @student.active == "t"
      @status = 'active' 
    elsif @student.active == "f" 
      @status = 'inactive'
    end
  end

  def activate
    @student = Student.find(params[:id])

    if @student.active
       @status = false
     else
       @status = true
    end
    #@student.active = @status
    @student.update(params[:id], active: @status)
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end