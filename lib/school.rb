require "pry"

class School
  attr_accessor :name, :roster, :grade
  def initialize(name)
    @name = name
    @roster = {}
    
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade (grade)
    roster[grade] 
  end
  
  def sort
   sort_name = {}
   roster.each do |grade, name|
       sort_name[grade] = name.sort
   end
    
  sort_name
  end
end