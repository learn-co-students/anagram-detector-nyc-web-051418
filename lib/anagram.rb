require 'pry'


class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end


  def match(anagrams)
    # takes an array of possible anagrams.
    # should return all matches in an array.
    # if no matches exist, return an empty array.

    array = []

    anagrams.each do |item|
      if item.split("").sort == self.word.split("").sort
        array << item
      end
    end
    array
  end

end

listen = Anagram.new("listen")
puts listen.match(%w(enlists google inlets banana))
