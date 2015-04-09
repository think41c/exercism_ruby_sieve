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
    current_num   = 3
    divide_into   = 3
    @primes_found = [2]
    
    until current_num == @num_primes_to_find
      if prime?(divide_into)
        @primes_found << divide_into
      end
      current_num += 1
      divide_into += 2
      return @primes_found if divide_into > @num_primes_to_find
    end
  end
end
# a = Sieve.new(10)
# p a.primes