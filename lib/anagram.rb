# Your code goes here!
class Anagram
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def match(array)
    matches = [] #new array for matches
    array.each do |word| #iterating over the array of words given
      matches << word if word.split("").sort == @string.split("").sort #check for matches and push them to the matches array
    end
    matches
  end

end
