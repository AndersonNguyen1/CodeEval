slangs = [
  ", yeah!",
  ", this is crazy, I tell ya.",
  ", can U believe this?",
  ", eh?",
  ", aw yea.",
  ", yo.",
  "? No way!",
  ". Awesome!"
]

File.open(ARGV[0]).each_line do |line|
  punctuation_count = 0

  characters = line.strip.split ''

  characters.each_index do |index|
    if characters[index] == '.' || characters[index] == '!' || characters[index] == '?'
      punctuation_count += 1
    end
    if punctuation_count % 2 != 0
      characters[index] = slangs[index]
    end
  end
  puts punctuation_count
  puts characters.join ''
end
