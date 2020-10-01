x, _, _ = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ax = a.include?(x)
bx = b.include?(x)
puts (ax && bx) ? 'MrMaxValu' : ax ? 'MrMax' : bx ? 'MaxValu' : '-1'
