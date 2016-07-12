File.open(ARGV[0]).each_line do |line|
  a, b = line.strip.split ' | '
  a = a.split ' '
  b = b.split ''

  wine_list = []

  # keeps track of indivudual char count, needed for checking if wine name
  # contains each character including duplicates
  chars_count = {}
  b.each_index do |index|
    if chars_count[b[index]].nil?
      chars_count[b[index]] = 1
    else
      chars_count[b[index]] += 1
    end
  end

  # check if wine contains all chars
  a.each_index do |index|
    seen = true
    chars_count.each do |key, value|
      if a[index].scan(key).size < value
        seen = false
        break
      end
    end

    wine_list << a[index] if seen
  end

  if wine_list.size == 0
    puts 'False'
  else
    puts wine_list.join ' '
  end
end
