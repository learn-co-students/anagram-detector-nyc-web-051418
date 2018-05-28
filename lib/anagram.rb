class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  # should return all matches in array for possible anagrams
  # if none exist, return empty array
  def match(array)
    check_this_word = @word.split("").sort
    our_words = []

    array.select do |word|
      new_word = word.split("").sort

      if check_this_word == new_word
        our_words << word
      end
    end
    our_words
  end

end
