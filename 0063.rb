l, k = gets.chomp.split.map(&:to_i)

n = l / (2*k)
n -= 1 if 0 == l % (2*k)

puts n*k
