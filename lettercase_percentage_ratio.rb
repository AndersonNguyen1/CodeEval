File.open(ARGV[0]).each_line do |line|
  a = line.strip.split ''
  sum = 0
  low_count = 0
  upper_count = 0
  a.each_index do |index|
    if a[index] == a[index].upcase
      upper_count += 1
      sum += 1
    elsif a[index] == a[index].downcase
      low_count += 1
      sum += 1
    end
  end
  puts 'lowercase: ' + ((low_count.to_f/sum)*100).to_s.ljust(10, '0') + ' ' 'uppercase: ' + ((upper_count.to_f/sum)*100).to_s.ljust(10, '0')
end
