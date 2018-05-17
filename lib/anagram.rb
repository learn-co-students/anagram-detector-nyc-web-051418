# Your code goes here!

require 'pry'


class Anagram

    attr_accessor :word

    def initialize(word)
      @word = word
    end


    def match (possible_anagram_array)

            match_list = []

            first_word = @word
            first_word_array = @word.split("").sort

            possible_anagram_array.each do |second_word|

                  test_word = second_word
                  test_word_array = second_word.split("").sort



                  if first_word_array == test_word_array
                #    binding.pry
                    match_list << test_word
                  end

            end

        #binding.pry
        match_list

          #return all the matches or empty array if none exist
    end

end
