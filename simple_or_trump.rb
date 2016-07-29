card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

File.open(ARGV[0]).each_line do |line|
  cards = []

  cards_list, trump = line.strip.split ' | '

  cards_string = cards_list.split ' '

  cards_string.each_index do |index|
    if cards_string[index].length == 2
      cards << {value: cards_string[index][0], suit: cards_string[index][1]}
    else
      cards << {value: cards_string[index][0..1], suit: cards_string[index][2]}
    end
  end

  if cards[0][:suit] == trump && cards[1][:suit] != trump
    puts cards_string[0]
  elsif cards[0][:suit] != trump && cards[1][:suit] == trump
    puts cards_string[1]
  else
    if cards[0][:value] == cards[1][:value]
      puts cards_list
    elsif card_values.index(cards[0][:value]) > card_values.index(cards[1][:value])
      puts cards_string[0]
    else
      puts cards_string[1]
    end
  end
end
