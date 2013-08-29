class Television
  def initialize(brand, screen_size, price)
    @brand = brand
    @screen_size = screen_size
    @price = price
  end
end

class TelevisionChannel
  def initialize(company, number, type)
    @company = company
    @number = number
    @type = type
  end
end

class TelevisionShow
  def initialize(title, channel, timeslot)
    @title = title
    @channel = channel
    @timeslot = timeslot
  end
end