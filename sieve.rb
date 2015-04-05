class Sieve
  
  # attr_reader :num_of_primes

  def initialize(num_of_primes)
    @num_of_primes = num_of_primes
  end

  def primes
    primes_found = []
    current_num  = 1

    until primes_found.length == @num_of_primes
      # Hypothesis: Is a number divisible by 2, 3, 5, 7? Then it's not prime.
      # 13 ? Prime.
      # 17 ? Prime.
      # 23 ? Prime. 
    end
  end

end
