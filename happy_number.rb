def happy_check(number_string)

end

number_list = []
solutions = []

File.open(ARGV[0]).each_line do |line|
  splitNumbers = line.strip.split ''

  splitNumbers.each_index do |index|
    if splitNumbers[index].to_i == 1
      solutions << 1
    else
      happy_check(splitNumbers)
    end
  end
end

puts solutions
