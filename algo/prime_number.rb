# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

class Prime 

  def is_prime?(number)
    count = 0
    for digit in 2..(number - 1)
      if (number % digit) == 0
        count += 1
      end
    end
    return count == 0 
  end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

  def highest_prime_number_under(number)
    highest_prime = 0
    for digit in 1..number
      if is_prime?(digit) && digit > highest_prime
        highest_prime = digit
      end
    end
    return highest_prime
  end

end