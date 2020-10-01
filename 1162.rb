n = gets.to_i
a = Math.sqrt(n).ceil
a -= 1 if (n/a == n/(a+1))
puts n/(a+1)+a
