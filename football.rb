File.open(ARGV[0]).each_line do |line|
  unique_team = []
  fan_count = {}

  country = line.strip.split '| '
  teams = line.strip.delete('| ').split ''

  teams.each do |char|
    unique_team << char if !(unique_team.include? char)
  end

  country.each_index do |index|
    if country[index].include?  
end
