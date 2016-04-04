n = gets.to_i
a, b = 2.times.map{ gets.chomp!.split.map(&:to_i) }

h = a.group_by.with_index{|_, i| b[i] }
s = {}
h.each{|i, a| s[i] = a.inject(:+) }
puts (s.values.max <= (s[0]||0)) ? 'YES' : 'NO'
