File.open(ARGV[0]).each_line do |line|
  a = line.squeeze
  puts a.strip.split.join ' '
end
