n, a = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

puts ((x.inject(:+).to_f / n) == a) ? 'YES' : 'NO'
