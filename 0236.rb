a, b, x, y = gets.split.map(&:to_f)
puts (b*x < a*y) ? ((a+b)*x)/a : ((a+b)*y)/b
