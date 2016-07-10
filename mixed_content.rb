File.open(ARGV[0]).each_line do |line|
  a = line.strip.split ','

  numbers_array = []
  words_array = []

  a.each_index do |index|
    if a[index] =~ /\A[-+]?[0-9]+\z/
      numbers_array << a[index]
    else
      words_array << a[index]
    end
  end
  b = words_array.join ','
  c = numbers_array.join ','

  b << '|' if !b.empty? && !c.empty?

  puts "#{b}#{c}"
end
