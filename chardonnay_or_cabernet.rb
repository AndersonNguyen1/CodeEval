File.open(ARGV[0]).each_line do |line|
  a, b = line.strip.split ' | '
  a = a.split ' '
  b = b.split 
  a.each_index do |index|
    if a[index].include? 'b'
      puts a[index]
    end
  end
end
