s = gets.chomp
n = s.length
puts (s[0...(n/2)] == s[(n/2)..]) ? 'YES' : 'NO'
