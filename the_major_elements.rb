File.open(ARGV[0]).each_line do |line|
  a = line.strip.split ','
  a = a.sort

  major_value = nil
  major_count = 0
  current_count = 0

  a.each_index do |index|
    if a[index] == a[index + 1]
      current_count += 1
    else
      if current_count > major_count
        major_count = current_count
        major_value = a[index]
      end
      current_count = 0
    end
  end

  if major_count >= a.length/2
    puts major_value
  else
    puts "None"
  end
end
