s = 2.times.map{ gets.split }

name1, name2 = s[0][0], s[1][0]
p1, p2 = s[0][1].to_i, s[1][1].to_i

if p1 == p2
  puts -1
  exit 0
end
puts (p2 < p1) ? name1 : name2
