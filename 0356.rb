t = 3.times.map{ gets.to_i }

lcm = t.inject(:lcm)
nr = t.map{|ti| lcm / ti }
q = (nr[0] - nr[2]).gcd(nr[1] - nr[2])
g = lcm.gcd(q)

puts "#{lcm/g}/#{q/g}"
