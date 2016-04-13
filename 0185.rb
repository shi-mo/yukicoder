n = gets.to_i

x, y = gets.split.map(&:to_i)
ans = y - x
(n-1).times do
  x, y = gets.split.map(&:to_i)
  next if (y - x) == ans
  ans = -1
  break
end
ans = -1 if ans <= 0
puts ans
