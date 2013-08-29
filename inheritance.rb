require 'pry'
require 'awesome_print'

class Participant
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Student < Participant
  def greet
    "Hi #{@name}!"
  end
end

student = Student.new('Tom Brady')
ap student.name
ap student.greet