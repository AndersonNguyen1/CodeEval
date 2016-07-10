

File.open(ARGV[0]).each_line do |line|
  a = line.strip.split ' '

  final_array = []
  
  count = 1
  current_number = nil
  final_string = nil

  a.each_index do |index|
    if a[index] == a[index + 1]
      count += 1
    else
      current_number = a[index]
      final_array << count
      final_array << current_number
      count = 1
    end
  end
  puts final_array.join ' '
end
