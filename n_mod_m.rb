File.open(ARGV[0]).each_line do |line|
  a, b = line.strip.split ','
  a = a.to_i
  b = b.to_i
  remainder = 0

  while a >= b
    remainder = a - b
    a = a - b
  end
  puts remainder
end
