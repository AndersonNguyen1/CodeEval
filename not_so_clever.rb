File.open(ARGV[0]).each_line do |line|
  a, b = line.strip.split ' | '
  count = 0
  #puts "pizza#{a}pizza"
  a = a.strip.split ' '
  #p a

  # check how mant times you need to loop through and sort
  while count < b.to_i
    #puts "beforecount: #{count}"
    # check each number
    a.each_index do |index|
      #puts "list before swap: " + a.join(' ')
      # make sure doesn't go out of bounds
      # compare values to see if you can swap
      if index < (a.length-1) && a[index].to_i > a[index + 1].to_i
        #puts "swapping"
        temp = a[index]
        a[index] = a[index + 1]
        a[index + 1] = temp
        break
      end
      #puts "not swapping"
    end
    count += 1
    #puts "count++: #{count}"
    #p a
  end
  puts a.join ' '
end
