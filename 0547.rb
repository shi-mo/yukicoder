n = gets.to_i
s = gets.chomp.split
t = gets.chomp.split
i = 0
n.times{|k| i = k if s[k] != t[k] }
puts i+1, s[i], t[i]
