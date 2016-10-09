n = gets.to_i
k = gets.to_i
v = n.times.map{ gets.to_i }.sort

puts v[n-1] - v[0]
