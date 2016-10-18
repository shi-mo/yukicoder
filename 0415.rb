n, d = gets.split.map(&:to_i)

g = n.gcd(d)
n = n / g
d = d / g

puts (0 == (n % d)) ? (n / d - 1) : (n - 1)
