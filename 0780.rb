a, b = gets.split.map(&:to_i)
puts (a < b) ? 'YES' : 'NO'
puts (a+1-b).abs
