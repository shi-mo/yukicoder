s = gets.chomp
t = gets.chomp

if 1 == t.length
  puts s.include?(t) ? '-1' : 0
  return
end

c = 0
tdot = t[0..-2] + '.' + t[-1]
while s.sub!(/#{t}/o, tdot)
  c += 1
end
puts c
