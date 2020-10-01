n0 = gets.to_i

i = 0
m = n = n0
while 1 < n
  i += 1
  if 0 == n%2
    n /= 2
    next
  end
  n = 3*n + 1
  m = [n, m].max
end
puts i
puts m
