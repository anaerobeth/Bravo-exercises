require "pry"

class Whiteboard
  attr_accessor :contents

  def initialize(contents = [])
    @contents = contents
  end

  def erase_contents
    @contents = []
  end

end

class DryEraseMarker
  attr_reader :color, :capacity
  def initialize(color)
    @color = color
    @capacity = 100
  end

  INK_USE_PER_CHARACTER = 0.01
  def write(contents, whiteboard)
    @capacity = @capacity - (INK_USE_PER_CHARACTER * contents.length)
    whiteboard.contents << contents
  end

  def has_ink?
    @capacity > 0
  end

end

whiteboard = Whiteboard.new
black_marker = DryEraseMarker.new('black')
binding.pry

if black_marker.has_ink? == true
  puts "My capacity is #{black_marker.capacity}"
  puts "I am ready to write more"
end

black_marker.write('Hello Launchers', whiteboard)
black_marker.write('My name is Slim Shady', whiteboard)

whiteboard.erase_contents

if black_marker.has_ink? == true
  puts "I am ready to write more"
end

if black_marker.has_ink? == true
  puts "My capacity is #{black_marker.capacity}"
  puts "I am ready to write more"
end


whiteboard.erase_content


