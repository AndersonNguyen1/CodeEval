first = []
second = []
third = []

File.open(ARGV[0]).each_line do |line|
  a, b, c = line.strip.split('| ')

  a = a.split ' '
  a = a.map(&:to_i)
  b = b.split ' '
  b = b.map(&:to_i)
  c = c.split ' '
  c = c.map(&:to_i)

  first << a[0]
  second << a[1]
  third << a[2]

  first << b[0]
  second << b[1]
  third << b[2]

  first << c[0]
  second << c[1]
  third << c[2]

  first.sort!
  second.sort!
  third.sort!
  puts "#{first.last} #{second.last} #{third.last}"
end
