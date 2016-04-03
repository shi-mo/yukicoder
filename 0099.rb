n = gets.to_i
x = gets.chomp!.split.map(&:to_i)

even = x.map{|xi| xi%2 }.count(0)
odd = n - even
puts (even - odd).abs
