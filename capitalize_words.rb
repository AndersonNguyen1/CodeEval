File.open(ARGV[0]).each_line do |line|
  a = line.strip.split ' '
  a.each_index do |index|
    a[index][0] = a[index][0].upcase
  end
  puts a.join ' '
end
