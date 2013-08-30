class Car
  class << self
    @@make_map = {}
    def add_make(new_make_map)
      new_make_map.each do |make, model_list|
        # @@make_map ||= []

        # initialize the collection of models if it hasn't
        # already been intialized
        if @@make_map[make].nil?
          @@make_map[make] = []
        end

        # add the supplied model list to the make
        @@make_map[make] += model_list

        # de-duplicate
        @@make_map[make].uniq!

       end
    end

    def available_makes
      @@make_map
    end

    def valid_make?(make)
      @@make_map.has_key?(make)
    end

    def valid_model?(make, model)
      valid_make?(make) && @@make_map[make].include?(model)
    end
  end
end

Car.add_make({'ford' => ['focus', 'taurus']})
Car.add_make({'toyota' => ['camry', 'corolla']})
Car.add_make({'toyota' => ['tundra']})

# {
#   'ford' => ['focus', 'taurus'],
#   'chevy' => ['S10', 'Blazer']
#   'toyota' => ['camry', 'corolla', 'tundra']
# }

puts Car.available_makes.inspect

puts Car.valid_make?('toyota') # => true
puts Car.valid_make?('kia') # => false

puts Car.valid_model?('toyota', 'camry') # => true
puts Car.valid_model?('toyota', 'taurus') # => false