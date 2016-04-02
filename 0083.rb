n = gets.to_i
s = '1' * (n/2)
s[0] = '7' if 1 == n%2
puts s
