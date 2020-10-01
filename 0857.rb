x, y, z = gets.split.map(&:to_i)
z -= 1 if y <= z
z -= 1 if x <= z
puts z
