require 'date'
d = Date.new(*(gets.split.map(&:to_i)))
puts (Date.new(1989, 1, 8) <= d && d <= Date.new(2019, 4, 30)) ? 'Yes' : 'No'
