require 'pry'
require 'awesome_print'

class Car
  @@make_map = {}
  @@makes = []
  @@models = []
  def add_make(new_make_map)

    # create the key value pair
    new_make_map.each do |make, model_list|

    # init the collection if not yet yet
    # @@make_map ||= []
      if @@make_map[make].nil?
        @@make_map[make] = []
      end


    # add supplied model list to the make
    @@make_map[make] += model_list

    # deduplicate
    @@make_map[make].uniq!
    end
  end


  def available_makes
    @@make_map.keys
  end


  def valid_make?(make)
    @@make_map.has_key?(make)
  end

  def valid_model?(make, model)
    valid_make?(make) && @@make_map[make].include?(model)
  end

end



# Use a hash with arrays as values
# Validate both make and model

Car.add_make({ford: ['focus', 'taurus']})
Car.add_make({toyota: ['camry', 'corolla']})


puts "Valid makes are: "
ap Car.available_makes
puts
puts "Valid models are: "
ap Car.available_makes

puts "Is ford a valid make?"
ap Car.valid_make?(:ford) # => true

puts "Is taurus a model of ford?"
ap Car.valid_model?('ford', 'taurus') # => true

puts "Is taurus a model of GMC?"
ap Car.valid_model?('GMC', 'taurus') # => false

puts "Is camry a model of toyota?"
ap Car.valid_model?('toyota', 'camry') # => true

puts "Is camry a model of toyota?"
ap Car.valid_model?('toyota', 'taurus') # => false


# target data structure

# {
#   'ford' => ['focus', 'taurus']
# }