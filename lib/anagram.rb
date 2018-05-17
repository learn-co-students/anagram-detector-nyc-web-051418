require "pry"

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
    @fragmented_word = word.split("").sort
  end

  def match(words)
    final = words.select do |word|
      sorted_check = word.split("").sort
      @fragmented_word == sorted_check
          #  binding.pry
    end
    final
  end
end
