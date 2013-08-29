class DryEraseMarker
  attr_reader :capacity

  def initialize(color)
    @color = color
    @capacity = 100
  end

  def color
    @color
  end

  INK_USED_PER_CHARACTER = 0.001
  def write(string)
    @capacity = @capacity - (string.length * INK_USED_PER_CHARACTER)
  end
end

dans_marker = DryEraseMarker.new('black')
puts dans_marker.color

other_marker = DryEraseMarker.new('green')
puts other_marker.color

other_marker.color == dans_marker.color

class Car
  def initialize(color, owner, year)
    @color = color
    @owner = owner
    @year = year
  end

  #shortcut for both a getter and a setter
  attr_accessor :owner

  #shortcut for a getter
  # attr_reader :owner
  # def owner
  #   @owner
  # end

  #shortcut for a setter
  # attr_writer :owner
  # def owner=(new_owner)
  #   @owner = new_owner
  # end
end

dans_car = Car.new('blue', 'Dan', 2002)

puts dans_car.owner
dans_car.owner = 'Richard'
puts dans_car.owner