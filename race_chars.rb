solution = []
hole_index = nil

File.open(ARGV[0]).each_line do |line|
  index = line.index 'C'
  index ||= line.index '_'

  if hole_index == nil
    hole_index = index
  end

  if index < hole_index
    line[index] = '/'
  elsif index > hole_index
    line[index] = '\\'
  else index == hole_index
    line[index] = '|'
  end
  hole_index = index
  solution << line
end

puts solution
