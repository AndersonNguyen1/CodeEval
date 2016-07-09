File.open(ARGV[0]).each_line do |line|
  sum_of_double = 0
  sum_of_nodouble = 0
  a = line.strip.gsub(' ', '').split ''

  a.each_index do |index|
    if index % 2 == 0
      sum_of_double += a[index].to_i*2
    else
      sum_of_nodouble += a[index].to_i
    end
  end

  if (sum_of_double + sum_of_nodouble) % 10 == 0
    puts 'Real'
  else
    puts 'Fake'
  end
end
