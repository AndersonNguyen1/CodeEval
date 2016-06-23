File.open(ARGV[0]).each_line do |line|
  a = line.strip.split
  highest = a[0]
  a.each_index do |index|
    if highest.length < a[index].length
      highest = a[index]
    end
  end
  puts highest
end
