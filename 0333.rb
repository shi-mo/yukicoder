a, b = gets.split.map(&:to_i)
puts (a < b) ? b-2 : 2000000000-b-1
