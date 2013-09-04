class PigLatinTranslation

  def initialize(phrase)
    @phrase = phrase
  end

  #provide the pig latin translation
  def translate
    words
    words_array = []
    pig_latin_words_array = []
    @words_array.each do |word|
      if starts_with_vowel?(word)
        word += 'way'
      elsif !starts_with_vowel?(word[1..-1])
        word = word[2..-1] + word[0] + word[1] + 'ay'
      else
        word = word[1..-1] + word[0] + 'ay'
      end
      pig_latin_words_array << word
    end
    return pig_latin_words_array
  end

  private
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

p = PigLatinTranslation.new('happy duck glove')
array = p.translate
array.each do |word|
  print word + " "
end
puts
p = PigLatinTranslation.new('egg inbox eight')
array = p.translate
array.each do |word|
  print word + " "
end
puts