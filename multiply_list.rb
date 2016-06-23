File.open(ARGV[0]).each_line do |line|
  a, b = line.strip.split '|'
  a = a.split
  b = b.split
  products = []
  a.each_index do |index|
    products << a[index].to_i*b[index].to_i
  end
  puts products.join ' '
end
