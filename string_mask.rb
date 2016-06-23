File.open(ARGV[0]).each_line do |line|
  a, b = line.strip.split ' '

  b.split('').each_index do |index|
    if b[index] == '1'
      a[index] = a[index].upcase
    end
  end
  puts a
end
