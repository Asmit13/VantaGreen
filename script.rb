# File Name: example_script.rb

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "Name: #{@name}, Age: #{@age}"
  end
end

class Student < Person
  attr_accessor :student_id

  def initialize(name, age, student_id)
    super(name, age)
    @student_id = student_id
  end

  def to_s
    super + ", Student ID: #{@student_id}"
  end
end

# Create instances of the classes
person = Person.new("John Doe", 30)
student = Student.new("Alice Smith", 22, "S12345")

# Output information
puts "Person: #{person}"
puts "Student: #{student}"
