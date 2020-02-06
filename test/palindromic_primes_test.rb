require "test_helper"

class PalindromicPrimesTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PalindromicPrimes::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_it_gets_five_numbers
	  five_numbers = PalindromicPrimes.palindromic_primes(5)
	  assert_equal [2, 3, 5, 7, 11], five_numbers
  end

  def result_is_an_array
	  result = PalindromicPrimes.palindromic_primes(2)
	  assert result.is_a?
  end
end
