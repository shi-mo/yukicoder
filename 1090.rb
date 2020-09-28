n, d = gets.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
x = [0]
(n-1).times do |i|
  if d <= a[i]
    x << x[i] + a[i]
    next
  end
  a[i+1] -= (d - a[i]) if i < (n-2)
  x << x[i] + d
end
puts x.join(' ')
