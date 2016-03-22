l, m, n = 3.times.map{ gets.to_i }

money = (100*l) + (25*m) + n
coins = money % 1000

l = coins / 100
m = (coins % 100) / 25
n = (coins % 100) % 25

puts l+m+n
