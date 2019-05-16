# code here!

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        @roster.map do |grade, student_array|
            @roster[grade].sort!
        end
    @roster
    end
end