File.open(ARGV[0]).each_line do |line|
  a, b, c = line.strip.split ' '
  a = split ':'
  b = split ':'
  c = split ':'
