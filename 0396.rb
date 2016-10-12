n, m = gets.split.map(&:to_i)
x, y = gets.split.map(&:to_i)

mx = (x-1) % (2*m)
my = (y-1) % (2*m)
m2x = 2*m - mx - 1
m2y = 2*m - my - 1
puts (mx == my || mx == m2y || m2x == my) ? 'YES' : 'NO'
