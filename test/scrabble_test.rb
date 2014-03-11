gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'

class ScrabbleTest < Minitest::Test

  def test_can_score_word
    assert_equal 8, Scrabble.score("hello")
    assert_equal 5, Scrabble.score("ape")
  end

  def test_blank_string_is_0_points
    assert_equal 0, Scrabble.score("")
  end

  def test_nil_is_zero
    assert_equal 0, Scrabble.score(nil)
  end

  def test_highest_score
    assert_equal "home", Scrabble.highest_score_from(['home', 'word', 'hello', 'sound'])
  end

  def test_highest_score_tie_but_one_word_seven_letters
    assert_equal "silence", Scrabble.highest_score_from(['home', 'word', 'silence'])
  end

  # def test_it_can_score_a_single_letter
  #   assert_equal 1, Scrabble.score("a")
  #   assert_equal 4, Scrabble.score("f")
  # end

  # def test_it_can_score_a_word
  #   assert_equal 5, Scrabble.score("ape")
  # end

  # def test_returns_zero_for_empty_string
  #      assert_equal 0, Scrabble.score("")
  #   assert_equal 0, Scrabble.score(nil)
  # end

  # def test_highest_score_from
  #   assert_equal "home", Scrabble.highest_score_from(['home', 'word', 'hello', 'sound'])
  #   assert_equal "cabbage", Scrabble.highest_score_from(['cabbage', 'sound', 'hello'])
  # end
end
