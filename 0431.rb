*d, s = gets.split.map(&:to_i)

puts (1 == s) || (d.inject(:+) < 2) ? 'SURVIVED' : 'DEAD'
