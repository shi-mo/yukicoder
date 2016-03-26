def num_rotations(x, y)
  (y < 0) ? 2 : (x.zero? ? 0 : 1)
end

x, y, l = 3.times.map{ gets.to_i }

nx = (x.abs + l - 1) / l
ny = (y.abs + l - 1) / l
puts nx + ny + num_rotations(x, y)
