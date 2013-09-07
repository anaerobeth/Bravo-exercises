class AnagramGenerator
  attr_accessor :word

  def initialize(word)
    @word = word.downcase
  end

  def generate
    anagram_array = []
    factorial = word.length.downto(1).inject(:*)
    while anagram_array.length != factorial
      anagram = word.split('').shuffle.join
      if anagram_array.include?(anagram) == false
        anagram_array << anagram
      end
    end
    if anagram_array.length > 1
      anagram_array.delete(word)
    end
    return anagram_array
  end
end

word = gets.chomp
anagram = AnagramGenerator.new(word.downcase)
puts anagram.generate