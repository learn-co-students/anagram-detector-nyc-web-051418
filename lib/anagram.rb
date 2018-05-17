require 'pry'
class Anagram
  attr_accessor :anagram_word

  def initialize(word)
    @anagram_word = word
  end

  def match(array_of_words)
    array_of_words.select do |tester_word|
      tester_word.split("").sort == @anagram_word.split("").sort
    end
  end
end
