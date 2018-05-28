require 'pry'
class Anagram
  attr_accessor :anagram
  def initialize(anagram)
    @anagram = anagram
  end

  def match(string)
    matched_list = []
    var = @anagram.split("").sort
    string.each do |word_tested|
      var_match = word_tested.split("").sort
      matched_list << word_tested if var == var_match
      # binding.pry
      # true
    end
    matched_list
  end

end
