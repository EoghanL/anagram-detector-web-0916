class Anagram

  attr_accessor :word

  def initialize(word_to_check)
    @word = word_to_check
  end

  def match(array_of_possible_answers)
    array_of_possible_answers.map do |word|
      word if word.split("").sort == @word.split("").sort
    end.compact
  end

end
