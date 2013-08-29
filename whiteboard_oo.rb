require 'pry'

class Whiteboard
  attr_accessor :contents

  def initialize(contents = [])
    @contents = contents
  end
end

class DryEraseMarker
  attr_reader :color, :capacity
  def initialize(color, capacity)
    @color = color
    @capacity = capacity
    @ink_usage = 0.01
  end

  def write(contents, whiteboard, eraser)
    @capacity -= eraser.check_ink_usage(contents, @ink_usage)
    whiteboard.contents << contents
  end
end

class Eraser

  def clean_board(board)
    board.contents = []
  end

  def check_capacity(marker)
    puts marker.capacity
  end

  def check_ink_usage(contents, ink_usage)
    contents.tr(' ','').length * ink_usage
  end

end

whiteboard = Whiteboard.new
print whiteboard.contents
marker = DryEraseMarker.new('pink', 1000)
eraser = Eraser.new
marker.write('hello', whiteboard, eraser)
print marker.capacity