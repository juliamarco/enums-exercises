gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class MapPatternTest < Minitest::Test

  def test_capitalize
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  def test_doubles
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each do |number|
      doubles << number * 2
      return doubles
    end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares

    numbers = [1, 2, 3, 4, 5]
    squares = []
      numbers.each do |number|
        squares << number * number
      end
      return squares
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths

    names = ["alice", "bob", "charlie", "david", "eve"]
    lengths = []
      names.each do |name|
        lengths << name.length
      end
      return lengths
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes

    numbers = [234, 10, 9119, 38881]
    zip_codes = []
    numbers.each do |number|
      number_zero = number.to_s
      until number_zero.length == 5
        number_zero.insert(0, "0")
      end
        zip_codes << number_zero
        return zip_codes
      end

    assert_equal ["00234", "00010", "09119", "38881"], zip_codes
  end

  def test_backwards

    names = ["alice", "bob", "charlie", "david", "eve"]
    backwards = []
    names.each do |name|
      backwards << name.reverse
    end
    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_words_with_no_vowels

    words = ["green", "sheep", "travel", "least", "boat"]
    without_vowels = []
    words.each do |word|
      word.delete!("aeiou")
      without_vowels << word
    end
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], without_vowels
  end

  def test_trim_last_letter

    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    trimmed = []
    animals.each do |animal|
      trimmed << animal.chop
    end
    assert_equal ["do", "ca", "mous", "fro", "platypu"], trimmed
  end

end
