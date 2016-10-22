n = gets.to_i

n += 1
c = ('A'..'Z').to_a
s = ''
while 0 < n
  n -= 1
  s += c[n % 26]
  n /= 26
end
puts s.reverse
