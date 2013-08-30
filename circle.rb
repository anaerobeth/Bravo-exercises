# Circle abstraction
class Circle
  attr_reader :radius

  # radius - state
  def initialize(radius)
    @radius = radius
  end

  # calculate diameter
  def diameter
    @radius * 2
  end

  # calculate circumference
  def circumference
    pi * 2 * @radius
  end

  # calculate area
  def area
    (@radius ** 2) * pi
  end

  private
  def pi
    Math::PI
  end
end

puts "*** 5 in circle ***"
five_in_circle = Circle.new(5)
puts five_in_circle.radius
puts five_in_circle.diameter
puts five_in_circle.circumference
puts five_in_circle.area

puts ""

puts "*** 10 in circle ***"
ten_in_circle = Circle.new(10)
puts ten_in_circle.radius
puts ten_in_circle.diameter
puts ten_in_circle.circumference
puts ten_in_circle.area