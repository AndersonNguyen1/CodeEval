# sort the numbers

File.open(ARGV[0]).each_line do |line|
  a = line.strip.split
  sorted = a.sort
  seen_number = nil
  lowest_unique = 0

  for x in sorted.each_index
    if sorted[x] == sorted[x + 1]
      seen_number = sorted[x]
    elsif sorted[x] == seen_number
    else
      lowest_unique = sorted[x]
    break
    end
  end

  a.each_with_index do |value, index|
    if lowest_unique == value
      lowest_unique = index + 1
      break
    end
  end
  puts lowest_unique
end
