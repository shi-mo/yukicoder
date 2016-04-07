x, y = gets.split.map(&:to_i)
r = Math.sqrt(x*x + y*y) * 2
puts (r.ceil <= r) ? (r.ceil + 1) : r.ceil
