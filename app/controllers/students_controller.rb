class StudentsController < ApplicationController

  def index
    if params[:first_name]
      students = Student.find(params[:first_name])
    elseif params[:last_name]
    students = Student.find(params[:last_name])
    else 
    students = Student.all
    end
    render json: students
  end

  def id
    student = Student.find(params[:id])
    render json: student
  end

end
