x, y, z = gets.split.map(&:to_i)
puts [x%3, y%3, z%3].include?(0) ? 'Yes' : 'No'
