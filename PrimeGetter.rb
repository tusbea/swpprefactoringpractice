class PrimeGetter
  attr_accessor :max_num
  def initialize(max_num)
    @max_num = max_num
  end

  def prime_not_upper_than
    unless max_num.is_a? Integer
      puts "max_num must be an integer."
      return nil
    end
    if max_num < 0
      puts "max_num must be greater than 0."
      return nil
    end

    prime_numbers = [2]
    i = 3

    while (i < max_num) do
      is_prime = true
      prime_numbers.each do |num|
        if (i % num == 0)
          is_prime = false
          break
        elsif (num > Math.sqrt(i))
          break
        end
      end
      if(is_prime)
        prime_numbers.push(i)
      end
      i = i+1
    end 

    return prime_numbers
  end

end

if __FILE__ == $0
  prime = PrimeGetter.new(ARGV[0].to_i)
  puts prime.prime_not_upper_than
end

# Get prime numbers not upper than maximum number
#
# pseudo code

# if maximum number is not a integer or lower than 1
#   print error message and return nil
#
# start with prime numbers = [2] and number = 3
# while (number is not upper than maximum number)
#   if number is prime number
#     add the number to prime numbers
#   increase the number by 1
# return prime numbers
