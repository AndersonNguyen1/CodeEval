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

  lower_ratio = sprintf "%#.2f", (low_count.to_f/sum)*100
  upper_ratio = sprintf "%#.2f", (upper_count.to_f/sum)*100

  puts "lowercase: #{lower_ratio} uppercase: #{upper_ratio}"
end
