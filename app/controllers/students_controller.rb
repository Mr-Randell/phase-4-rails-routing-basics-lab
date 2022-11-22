class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        highest_grade = Student.maximum(:grade)
        highest_grade_student = Student.find_by! grade: highest_grade
        render json: highest_grade_student
    end
end
