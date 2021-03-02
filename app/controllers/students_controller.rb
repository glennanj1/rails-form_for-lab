class StudentsController < ApplicationController
    def show 
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(params.require(:student).permit(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def edit 
        @student = SchoolClass.find(params[:id])
    end

    def update 
        @student = SchoolClass.find(params[:id])
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end
    

end
