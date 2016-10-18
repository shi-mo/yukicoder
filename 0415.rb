n, d = gets.split.map(&:to_i)

g = n.gcd(d)
n = n / g
d = d / g

puts (case n % d
when 0
  n / d - 1
else
  n - 1
end)
