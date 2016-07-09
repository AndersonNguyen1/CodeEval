def find_repetition(line)
  count = 1
  while count <= line.length - count
    first_sub = line[0...count]
    second_sub = line[count...count*2]
    if first_sub == second_sub
      return count
    end
    count += 1
  end
  return line.length
end

File.open(ARGV[0]).each_line do |line|
  line = line.strip

  puts find_repetition(line)
end
