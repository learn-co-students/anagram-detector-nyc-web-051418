class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(list)
    anagram = @word.split("")
    list.select do |x|
      anagram.sort == x.split("").sort
    end
  end

end
