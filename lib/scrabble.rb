require 'pry'

class Scrabble
  # attr_reader :word

  # def initialize(word)
  #   @word = word
  # end

  # def self.score(word)
  #   Scrabble.new(word).score
  # end

  # def self.highest_score_from(words)
    # word_hash = words.each_with_object({}) do |word, hash|
    #   hash[word] = score(word)
    # end
    # sorted_words = word_hash.sort_by {|word, score| score}
    # sorted_words.last.first
  #   words.max_by { |word| score(word)}
  # end

  # def score
  #   letters.reduce(0) do |sum, letter|
  #     sum + scores[letter]
  #   end
  # end

  # def letters
  #   word.to_s.upcase.split("")
  # end

  def self.score(word)
    letters = word.to_s.upcase.split("")
    letters.reduce(0) { |sum, letter| sum += scores[letter] }
  end

  def self.highest_score_from(words)
    highest_word = words.sort_by { |word| score(word) }.last
    highest_words = words.select{ |word| score(word) == score(highest_word)}
    highest_words.sort_by { |word| word.length}.last  
  end

  def self.scores
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end

end
