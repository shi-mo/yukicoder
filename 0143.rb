k, n, f = gets.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

nuts_remained = (k * n) - a.inject(:+)
result = (0 <= nuts_remained) ? nuts_remained : -1
puts result
