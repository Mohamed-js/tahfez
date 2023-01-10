class DashboardController < ApplicationController
    def index
        p "STAAAAAAAAAAAAAAAAAAAART"
        @teachers = Teacher.all
        @students = Student.all
        @lessons = Lesson.all
        @teachers_count = @teachers.count
        @students_count = @students.count
        @lessons_count = @lessons.count
        @student_count_with_date = Student.group('DATE(students.created_at)').count
        @lesson_count_with_date = Lesson.group('DATE(lessons.created_at)').count
        @last_10_days_stats = [["Day", "Students", "Lessons"]]
        (Date.today-9..Date.today).each do |day|
            s_count = @students.where("Date(created_at) = ?", day).count
            l_count = @lessons.where("Date(created_at) = ?", day).count
            @last_10_days_stats.push [day.strftime("%m-%d"), s_count, l_count]
        end

        @popular_teachers = Teacher.includes(:avatar).joins(:students).group(:id, :name).count
        p @popular_teachers
    end

    
end