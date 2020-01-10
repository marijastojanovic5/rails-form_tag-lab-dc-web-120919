class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end
  def new

  end
  
  def create
    f = params[:student][:first_name]
    l = params[:student][:last_name]
    
    @student_name = Student.create(first_name:f,last_name:l)
    redirect_to students_path
  end

  def show
    @student = Student.find(params[:id])
  end
  

end
