n, m, k = gets.split.map(&:to_i)
op, *b = gets.chomp.split
b.map!(&:to_i)
a = []
n.times{ a << gets.to_i }

b.sort!
op = op.to_sym

c = 0
n.times do |i|
  x, y = 0, m
  while 0 < (y - x)
    p = (x+y) / 2
    if k <= [a[i], b[p]].inject(op)
      y = p
      next
    end
    x = p+1
  end
  c += m - x
end
puts c
