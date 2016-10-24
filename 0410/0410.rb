px, py = gets.split.map(&:to_i)
qx, qy = gets.split.map(&:to_i)

puts ((px - qx).abs + (py - qy).abs).to_f / 2
