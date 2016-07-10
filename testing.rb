File.open(ARGV[0]).each_line do |line|
  a, b = line.strip.split ' | '
  a = a.split ''
  b = b.split ''

  error = 0

  a.each_index do |index|
    if a[index] != b[index]
      error += 1
    end
  end

  if error == 0
    puts "Done"
  elsif error > 0 && error <= 2
    puts 'Low'
  elsif error > 2 && error <= 4
    puts 'Medium'
  elsif error > 4 && error <= 6
    puts 'High'
  else
    puts 'Critical'
  end
end
