File.open(ARGV[0]).each_line do |line|
  a = line.scan(/(?=>>-->)/).size
  b = line.scan(/(?=<--<<)/).size
  puts a + b
end
