class Sieve
  attr_reader :num_primes_to_find

  def initialize(num_primes_to_find)
    @num_primes_to_find = num_primes_to_find
  end

  def prime?(num)
    @primes_found.none? do |x| 
      if x > (num/2)
        false
      else
        num % x == 0 
      end
    end
  end

  def primes
    current_num  = 3
    @primes_found = [2]
    
    until current_num == @num_primes_to_find
      if prime?(current_num)
        @primes_found << current_num
        current_num += 1 
      else
        current_num += 1 
      end
    end
    @primes_found
  end
end
