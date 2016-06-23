File.open(ARGV[0]).each_line do |line|
  a = line.strip.split
  count = 1
  final = []
  a.each_index do |index|
    if a[index] == a[index + 1]
      count += 1
    end
    #final << count
    #final << a[index]
  end
  print count
  #print final
end
