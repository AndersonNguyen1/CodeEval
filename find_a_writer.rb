File.open(ARGV[0]).each_line do |line|
  a, b = line.strip.split '| '

  final_string = ''

  a = a.split ''
  b = b.split ' '

  b.each_index do |index|
    final_string << a[b[index].to_i]
  end
  puts final_string
end
