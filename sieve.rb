class Sieve
  attr_reader :num_of_primes

  def initialize(num_of_primes)
    @num_of_primes = num_of_primes
  end

  def prime?(num)
    upper_range = num/2
    (2..upper_range).none? { |x| num % x == 0 }
    # Refactor hypothesis : To see if a number is prime, it must be divisible by other prime numbers that
    # are smaller than it only. So don't check number to divide by, but only the current array of prime 
    # numbers. This will require major logic change/refactoring. 
    # I think an .any enum would work. 
  end

  def primes
    current_num  = 3
    primes_found = [2]
    
    until current_num == @num_of_primes
      if prime?(current_num)
        primes_found << current_num
        current_num += 1 
      else
        current_num += 1 
      end
    end
    primes_found
  end
end

a = Sieve.new(4)
a.primes