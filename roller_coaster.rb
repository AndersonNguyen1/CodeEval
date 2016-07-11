File.open(ARGV[0]).each_line do |line|
  characters = line.strip.split ''
  upper_toggle = true
  characters.each_index do |index|
    if characters[index] =~ /[a-zA-Z]+/
      if upper_toggle
        characters[index].upcase!
        upper_toggle = false
      else
        characters[index].downcase!
        upper_toggle = true
      end
    end
  end
  puts characters.join ''
end
