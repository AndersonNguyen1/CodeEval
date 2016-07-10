File.open(ARGV[0]).each_line do |line|
  final_string = ''
  asterisk_string = ''
  a = line.strip.split ' '
  a = a.max_by(&:length)
  a = a.split ''

  a.each_index do |index|
    final_string << asterisk_string
    final_string << a[index]
    final_string << " "
    asterisk_string << '*'
  end
  puts final_string
end
