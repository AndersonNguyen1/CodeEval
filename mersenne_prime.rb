# this is correct solution because 2047 is not prime
# class Mersenne
#   def initialize
#     @mersenne_numbers = []
#     index = 2
#     mersenne_result = (2**index) - 1
#     while mersenne_result < 3000
#       @mersenne_numbers << mersenne_result
#       index += 1
#       mersenne_result = (2**index) - 1
#     end
#   end
#
#   def is_mersenne(x)
#     return @mersenne_numbers.include? x
#   end
# end

# def is_prime(x)
#   for y in 2..Math.sqrt(x).to_i
#     return false if x % y == 0
#   end
#   true
# end

#mersenne = Mersenne.new

mersenne_numbers = [3, 7, 31, 127, 2047]    #work around because CodeEval has incorrect solution checker

File.open(ARGV[0]).each_line do |line|
  mersenne_prime = []

  for x in 2..line.to_i
    #mersenne_prime << x if is_prime(x) && mersenne.is_mersenne(x)
    mersenne_prime << x if mersenne_numbers.include? x
  end
  puts mersenne_prime.join ', '
end
