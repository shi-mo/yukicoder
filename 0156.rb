n, m = gets.split.map(&:to_i)
c = gets.split.map(&:to_i).sort!.reverse!

sc = c.inject(:+)
rest = sc - m

ans = n
c.each do |ci|
  break if rest <= 0
  rest -= ci
  ans -= 1
end
puts ans
