def remove_punc(string)
  return string.gsub /[^a-zA-Z]/, ''
end

File.open(ARGV[0]).each_line do |line|
  a = remove_punc(line).downcase.strip
  character_counts = {}

  a.each_char do |character|
    if character_counts[character].nil?
      character_counts[character] = 1
    else
      character_counts[character] += 1
    end
  end

  reverse_sorted_counts = character_counts.values.sort.reverse
  total_sum = 0
  multiplier = 26

  reverse_sorted_counts.each do |count|
    total_sum += count * multiplier
    multiplier -= 1
  end

  puts total_sum
end
