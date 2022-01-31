class StudentsController < ApplicationController

  def index
    #bonus

    students = if params[:name]
                 Student.by_name(params[:name])
               else
                 Student.all
               end    
    render json: students
    
    
    # students = Student.all
    # render json: students
  end

  def id
    student = Student.find(params[:id])
    render json: student
  end
end
