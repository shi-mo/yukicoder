a, b = gets.split.map(&:to_i)
puts (0 == b%a) ? (b/a) : 'NO'
