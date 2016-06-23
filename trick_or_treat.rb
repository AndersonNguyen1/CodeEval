File.open(ARGV[0]).each_line do |line|
  a = line.strip.split /[^\d]+/
  multiplier = 3
  sum = 0
  kids = 0
  a.slice(1..3).each do |character|
    sum += character.to_i * multiplier
    multiplier += 1
    kids += character.to_i
  end
  puts((sum*a.last.to_i)/kids)
end
