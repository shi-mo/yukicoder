n = gets.to_i

x = 1
1.upto(n-1) do |a|
  b = n - a
  x_ = (a+1) * (b+1) - 1
  x = [x, x_].max
end
puts x
