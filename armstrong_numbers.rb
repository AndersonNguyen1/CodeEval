File.open(ARGV[0]).each_line do |line|
  a = line.strip.split ''
  sum = 0
  a.each do |character|
    sum += character.to_i ** a.length
  end
  
  if sum.to_s == line.strip
    puts 'True'
  else
    puts 'False'
  end
end
