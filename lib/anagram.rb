require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
    # binding.pry
  end

  def match(phrase)
    phrase.select do |phrase_word|
      # first check number of letters match
      if word.length == phrase_word.length
        # sort the letters and see if they're an exact match
        if word.split("").sort == phrase_word.split("").sort
          phrase_word
        end
      end  
    end
  end

end