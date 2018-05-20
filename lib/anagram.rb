# Your code goes here!
require 'pry'
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagrams.select do |possible|
      a = possible.chars.sort.join("")
      b = self.word.chars.sort.join("")
      a == b
    end
  end
end
