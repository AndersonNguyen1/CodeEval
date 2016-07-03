# numbers_list = []
# solutions = []
#
# def happy_check(number_string, numbers_list, solutions)
#   sum = 0
#   if number_string.to_i == 1
#     solutions << 1
#   else
#     split_numbers = number_string.strip.split ''
#     split_numbers.each_index do |index|
#       sum += split_numbers[index].to_i**2
#     end
#     numbers_list << sum
#     puts solutions
#   end
# end
#
# File.open(ARGV[0]).each_line do |line|
#   happy_check(line, numbers_list, solutions)
# end

def happy_check(x)
  return 1 if number.to_i == 1
  # check if the number is one
  # otherwise, split the number and square each number
  # sum them back together and store it into an array
  # make

def happy?(number)
  history = {}
  happy_check(history)
  return 0

end

File.open(ARGV[0]).each_line do |line|
  puts happy?(line)
end
