class School 
  attr_accessor :roster
  attr_reader :grade
  
  def initialize(name)
    @name
    @roster = {} 
    # roster should be an empty hash upon initialization with roster = {grade:["student_name"]}
  end 
  
  def add_student(student_name,grade)
    # @roster[grade] ||= []
    # @roster[grade] ||@roster[grade]=[]
    # @roster[grade] ? @roster[grade] : @roster[grade] = []
    #a||=b
     if @roster[grade] 
       then @roster[grade] 
       else @roster[grade] = [] 
      end 
     @roster[grade] << student_name
  end 
  
  def grade(student_name)
  @roster[student_name]
  end 

  def sort
    @roster.each do |grade, student|
      student.sort!
    end
  end 
end 
  # {"key1": [
  #   "value1",
  #   "value2",
  #   "value3"
  # 
    # a || a = b
    # a ? a : a = b
    # if a then a else a = b end
  
  
  
  

#   def sort
# 		roster.each do |grade, people|
# 			roster[grade] = people.sort
# 		end 
# 	end 

# end 
#   a || a = b
# a ? a : a = b
# if a then a else a = b end



#lige 
# class School

#   attr_accessor :roster

#   def initialize(name)
#     @name = name
#     @roster = {}
#   end

#   def add_student(name, grade)
#     if roster.has_key?(grade)
#       roster[grade] << name
#     else
#       roster[grade] = []
#       roster[grade] << name
#     end
#   end

#   def grade(grade)
#     roster[grade]
#   end

#   def sort
#     roster.each do |grade, cohort|
#       roster[grade] = cohort.sort
#     end
#   end

# end
 