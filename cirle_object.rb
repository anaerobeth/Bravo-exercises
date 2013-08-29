require 'awesome_print'
class Circle
  attr_reader :radius

  def initialize(radius)
    @radius = radius
  end

  def diameter
    puts "Diameter is: ", @radius * 2
  end

  def circumference
    puts "Circumference: ", 3.1415 * @radius * 2
  end

  def area
    puts "Area is: ", 3.1415 * @radius ** 2
  end

end

circle = Circle.new(1)
ap circle.diameter
ap circle.circumference
ap circle.area
