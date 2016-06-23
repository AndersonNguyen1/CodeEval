File.open(ARGV[0]).each_line do |line|
  text = line.strip.split ';'

  convert = ''
  text.each do |index|
    case index
    when 'zero'
      convert << '0'
    when 'one'
      convert << '1'
    when 'two'
      convert << '2'
    when 'three'
      convert << '3'
    when 'four'
      convert << '4'
    when 'five'
      convert << '5'
    when 'six'
      convert << '6'
    when 'seven'
      convert << '7'
    when 'eight'
      convert << '8'
    when 'nine'
      convert << '9'
    end
  end
  puts convert
end
