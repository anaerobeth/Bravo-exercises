require 'rspec'

require_relative 'anagram_generator'

describe AnagramGenerator do

  it "displays the anagram of an empty string as itself" do
    anagram_array = AnagramGenerator.new('').generate
    expect(anagram_array[0]).to eql('')
  end

  it "displays the anagram of a single character as itself" do
    anagram_array = AnagramGenerator.new('a').generate
    expect(anagram_array[0]).to eql('a')
  end

  it "displays the anagram that has the same length as the word" do
    anagram_array = AnagramGenerator.new('dog').generate
    expect(anagram_array[0]).length to eql(3)
  end

  it "displays the anagram that has the same character set as the word" do
    anagram_array = AnagramGenerator.new('dog').generate
    expect(anagram_array[0].sort).to eql('dog'.sort)
  end

  it "displays the anagram that is not identical to the word" do
    anagram_array = AnagramGenerator.new('dog').generate
    anagram_array.each do |anagram|
      expect(anagram).should_not eql('dog')
    end
  end

end