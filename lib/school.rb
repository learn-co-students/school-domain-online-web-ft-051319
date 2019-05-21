# code here!
require "pry"
class School
  attr_accessor :roster, :school

  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  
  def grade (grade)
    roster[grade]
  end
  
  def sort
    
    roster.each do |grade, students|
      students.sort!
    end
  end
  
end

#school = School.new("Bayside High School")