n = gets.to_i
s = ''; n.times{ s += gets }
a = s.split.map(&:to_i)

c = [0]*11
ans = 0
a.each do |i|
  if 0 == c[i]
    c[i] += 1
    next
  end
  ans += 1
  c[i] = 0
end
ans += c.inject(:+)/4
puts ans
