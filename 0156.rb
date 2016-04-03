n, m = gets.split.map(&:to_i)
c = gets.split.map(&:to_i).sort!

ans = 0
c.each do |ci|
  break if m <= 0
  break if m < ci
  m -= ci
  ans += 1
end
puts ans
