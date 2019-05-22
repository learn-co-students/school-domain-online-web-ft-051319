require 'pry'
# code here!
class School
    # attr_accessor 
    attr_reader :school, :roster


    def initialize(school)
        @school = school
        @roster = {}
    end

    def grade(grade)
        @roster[grade]
    end

    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def sort
        @roster.each { |grade, student| student.sort!}
    end
end