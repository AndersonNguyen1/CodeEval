require 'date'

File.open(ARGV[0]).each_line do |line|
  date_ranges = line.strip.split '; '
  min_date = nil
  max_date = nil

  date_ranges.each do |date_range|
    dates = date_range.split '-'
    dates.each do |date|
      parsed_date = Date.parse(date)

      if min_date.nil?
        min_date = parsed_date
      else
        if parsed_date < min_date
          min_date = parsed_date
        end
      end

      if max_date.nil?
        max_date = parsed_date
      else
        if parsed_date > max_date
          max_date = parsed_date
        end
      end
    end
  end

  date_diff = ((max_date - min_date)/365.25).to_i
  puts date_diff
end
