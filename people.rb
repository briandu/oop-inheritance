class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{name}"
  end

end

class Student < Person

  def learn
    puts "I get it!"
  end

end

class Teacher < Person

  def teach
    puts "Everything in Ruby is an Object."
  end

end

student = Student.new("Brian")
teacher = Teacher.new("Jade")

=begin

# Step 8 Comment

Student class isn't able to access methods and info from Teacher class because
it isn't inheriting from that class. This applies vice versa.

=end
