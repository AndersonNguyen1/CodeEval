# sort the numbers

File.open(ARGV[0]).each_line do |line|
  a = line.strip.split.map(& :to_f).sort
  a.each_index do |x|
    a[x] = sprintf "%0.00f", a[x].to_f
  end
  puts a.join ' '
end
