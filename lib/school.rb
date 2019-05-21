require "pry"

class School
  attr_reader :name, :roster
  
  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(student, grade)
    if roster.has_key?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    roster.each do |grades, students|
      students.sort!
    end
  end

end