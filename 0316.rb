n = gets.to_i
a, b, c = gets.split.map(&:to_i)

m = n/a + n/b + n/c
m -= n/a.lcm(b) + n/b.lcm(c) + n/c.lcm(a)
m += n/a.lcm(b).lcm(c)
puts m
