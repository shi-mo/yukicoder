n = gets.to_i

p = 0
(0..(n/7)).each do |i|
  xrest = n - (7*i)
  (0..(xrest/5)).each do |j|
    yrest = xrest - (5*j)
    p += 1 if 0 == (yrest % 3)
  end
end
puts p
