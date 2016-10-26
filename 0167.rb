n, m = 2.times.map{ gets.to_i }

n %= 10
m = (0 == m) ? 0 : (m % 4) + 4
puts (n ** m) % 10
