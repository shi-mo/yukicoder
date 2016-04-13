n = gets.to_i
a = gets.split.map(&:to_i)

c = 0
0.upto(n-3) do |i|
  x = a[i..(i+2)]
  next if x[0] == x[1] || x[1] == x[2] || x[2] == x[0]
  y = x.map.with_index{|xi, i| [xi, i] }.sort_by{|e| e[0] }
  c += 1 if 0 == y[1][1] || 2 == y[1][1]
end
puts c
