File.open(ARGV[0]).each_line do |line|
  numerals = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  roman_numerals = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
  array_roman = []
  a = line.to_i

  for index in 0...numerals.length
    while a - numerals[index] >= 0
      array_roman << roman_numerals[index]
      a -= numerals[index]
    end
  end
  puts array_roman.join ''
end
