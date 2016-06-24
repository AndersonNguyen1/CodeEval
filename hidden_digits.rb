File.open(ARGV[0]).each_line do |line|
  string = 'abcdefghik'
  a = string.strip.split
  b = line.strip.gsub(/[^a-k0-9]/, '')
  puts b
end
