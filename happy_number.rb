File.open(ARGV[0]).each_line do |line|
  splitNumbers = line.strip.split('')
  if splitNumbers == 1
    puts('true')
  # else
  #   splitNumbers != 1
  #   splitNumbers.each_char do
  end
end
#print a.join('')
