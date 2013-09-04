class PigLatinTranslation



  def initialize(phrase)
    @phrase = phrase
  end

  #provide the pig latin translation
  def translate
    words_array = []
    pig_latin_words_array = []
    @words_array.each do |word|
      word += 'ay'
      pig_latin_words_array << word
    end
    return pig_latin_words_array
  end

  #private
  #an array of words in the phrase
  def words
    @words_array = @phrase.split(' ')
  end

  def starts_with_vowel?(word)
    vowels = /[aeiou]/
    start = word.byteslice(0)
    if start.match(vowels)
      return true
    else
      return false
    end
  end
end

p = PigLatinTranslation.new('happy new year')

puts p.starts_with_vowel?('happy')
puts p.words
puts p.translate
