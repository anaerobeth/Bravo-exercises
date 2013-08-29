# Quick Challange: write a set of classes that represent a set of animals.
# There should be a Duck, Cat, and Dog instance that all implement an emote
#(**hint**: what sound does a duck make?) and a eat class.
# A constructor that takes a name as an argument should be defined elsewhere.


class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end


end

class Duck < Animal
  def eat
    puts "#{name} likes corn"
  end

  def emote
    puts "#{name} says Quack"
  end
end

class Cat < Animal
  def eat
    puts "#{name} likes fish"
  end
  def emote
    puts "#{name} says Purr"
  end
end

class Dog < Animal
  def eat
    puts "#{name} likes treats"
  end
  def emote
    puts "#{name} says Arff"
  end
end



Duck.new("Donald").emote
Dog.new("Pluto").emote
Cat.new("Sylvia").emote
Duck.new("Donald").eat
Dog.new("Pluto").eat
Cat.new("Sylvia").eat