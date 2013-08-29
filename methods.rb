require 'pry'
require 'awesome_print'

class Car
  @@makes = []
  @@models = []

  def self.add_make(make)
    make.each do |make, models|
      @@makes << make
      @@models << models
    end
  end

  def self.valid_makes
    @@makes
  end

  def self.valid_models
    @@models
  end

  def self.valid_make?(make)
    @@makes.include?(make)
  end

  def self.valid_model?(model1, model2)
    models = [model1, model2]
    models.each do |model|
      @@models.include?(model)
    end
  end

end





# Use a hash with arrays as values
# Validate both make and model

Car.add_make({ford: ['focus', 'taurus']})
Car.add_make({toyota: ['camry', 'corolla']})

puts "Valid makes are: "
ap Car.valid_makes
puts "Valid models are: "
ap Car.valid_models


puts "Is ford a valid make?"
ap Car.valid_make?(:ford) # => true

puts "Is taurus a model of ford?"
ap Car.valid_model?('ford', 'taurus') # => true

puts "Is taurus a model of GMC?"
puts Car.valid_model?('GMC', 'taurus') # => false

puts Car.valid_model?('toyota', 'camry') # => true
puts Car.valid_model?('toyota', 'taurus') # => false