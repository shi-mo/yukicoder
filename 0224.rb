n = gets.to_i
s, t = 2.times.map{ gets.chomp! }
puts n.times.map{|i| (s[i] == t[i]) ? 0 : 1 }.inject(:+)
