File.open(ARGV[0]).each_line do |line|
  s, t = line.strip.split(',')
  match_index = -1
  s.length.times do |index|
    pos = s.length - index - 1
    if s[pos] == t
      match_index = pos
      break
    end
  end
  puts match_index
end
