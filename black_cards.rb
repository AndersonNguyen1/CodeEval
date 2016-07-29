def position_to_eliminate(number_of_people, black_spot_count)
  return (black_spot_count.to_i % number_of_people) - 1
end


File.open(ARGV[0]).each_line do |line|
  name_list, number_loops = line.strip.split ' | '

  name_list = name_list.split ' '

  while name_list.size > 1
    name_list.delete_at(position_to_eliminate(name_list.size, number_loops))
  end
  puts name_list[0]
end
