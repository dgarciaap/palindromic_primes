require "palindromic_primes/version"
require "prime"

module PalindromicPrimes
  class Error < StandardError; end	
  def self.is_palindrome?(n)
    n.to_s == n.to_s.reverse
  end

  def self.get_first_n_numbers(n)
    Prime.each.lazy.select { |x| is_palindrome?(x) }.first(n)
  end
end
