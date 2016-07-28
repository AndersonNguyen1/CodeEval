File.open(ARGV[0]).each_line do |line|
  hex, binary = line.strip.split ' | '
  hex = hex.split ' '
  binary = binary.split ' '

  hex_count = 0
  binary_count = 0

  hex.each_index do |index|
    hex_count += hex[index].to_i(16)
  end

  binary.each_index do |index|
    binary_count += binary[index].to_i(2)
  end

  if binary_count >= hex_count
    puts 'True'
  else
    puts "False"
  end
end
