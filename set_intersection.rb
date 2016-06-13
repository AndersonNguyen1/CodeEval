File.open(ARGV[0]).each_line do |line|
  a, b = line.strip.split(';')
  s = a.strip.split(',')
  t = b.strip.split(',')

  intersection = []
  s.each do |x_char|
    t.each do |y_char|
      intersection << x_char if x_char == y_char
    end
  end
  puts intersection.join(',')
end
