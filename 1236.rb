h, m = gets.split.map(&:to_i)
h %= 12
d = (30*h) + (m.to_f/2) - (6*m)
d += 360 if d < 0
puts (d * 120 / 11).floor
