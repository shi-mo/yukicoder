n, h, m, t = gets.split.map(&:to_i)

delay = (n-1) * t
s = (60 * h) + m
e = s + delay

puts (e / 60) % 24
puts (e % 60)
