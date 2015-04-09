class Sieve
  attr_reader :num_primes_to_find

  def initialize(num_primes_to_find)
    @num_primes_to_find = num_primes_to_find
  end

  def prime?(num)
    sq_root = Math.sqrt(num)
    @primes_found.none? do |x| 
      if x > sq_root
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
      end
      current_num += 1
    end
    @primes_found
  end
end
