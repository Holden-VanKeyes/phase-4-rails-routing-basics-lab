class StudentsController < ApplicationController

   def index
    students = Student.all
    render json: students
   end

   def show
    grades = Student.all.sort_by {|student| -student[:grade]}
       
    
   
    render json: grades
    end

    def highest_grade
    nerd = Student.all.sort_by {|student| -student[:grade]}
    
    render json: nerd.first
    
    end

end
