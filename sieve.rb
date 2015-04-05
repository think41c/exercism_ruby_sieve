class Sieve
  attr_reader :num_of_primes

  def initialize(num_of_primes)
    @num_of_primes = num_of_primes
  end

  # New hypothesis : To see if a number is prime, it must be divisible by other prime numbers that
  # are smaller than it only. So don't check number to divide by, but only the current array of prime 
  # numbers. This will require major logic change/refactoring. 

  def primes
    primes_found = [2,3,5,7]
    current_num  = 8
    until current_num == num_of_primes
      if current_num % 2 != 0  # Potentially prime
        if current_num % 3 != 0 
          if current_num % 5 != 0 
            if current_num % 7 != 0
              primes_found << current_num
            end
          end
        end
      else
      end
    current_num += 1
    end
    primes_found
  end
end
