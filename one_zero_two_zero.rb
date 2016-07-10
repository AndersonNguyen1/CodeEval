File.open(ARGV[0]).each_line do |line|
  number_of_zeros, length = line.strip.split ' '

  binary_array = []

  length.to_i.each do |length|
    binary_array << length.to_s(2)
  end
  puts binary_array
end
