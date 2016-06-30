a, b, c, d = gets.split.map(&:to_i)
puts ((((a%d)*b) % d) * c) % d
