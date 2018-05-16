# Your code goes here!
class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
    @sorted_word = word.split("").sort
  end

  def match(words)
    result = words.select do |word|
      sorted_check = word.split("").sort
      @sorted_word == sorted_check
    end
    result
  end
end
