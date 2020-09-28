c = 'abcdefghijklmnopqrstuvwxyz'
s = gets.chomp
d = (0...26).select{|i| c[i] != s[i] }[0]
puts "#{c[d]}to#{s[d]}"
