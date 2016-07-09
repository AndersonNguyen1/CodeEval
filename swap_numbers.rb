File.open(ARGV[0]).each_line do |line|
  words = line.strip.split ' '

  words.each_index do |index|
    temp_char = words[index][0]
    words[index][0] = words[index][-1]
    words[index][-1] = temp_char
  end
  puts words.join ' '
end
