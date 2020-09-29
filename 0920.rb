x, y, z = gets.split.map(&:to_i)
x, y = [x, y].sort
if 0 < z && x != y
  t = [(y - x), z].min
  x += t
  z -= t
end
if 0 < z
  x += z/2
end
puts x
