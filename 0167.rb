n, m = 2.times.map{ gets.to_i }

def pow_mod(x, n)
  res = 1
  x %= 10

  while 0 < n
    res *= (0 != n%2) ? x : 1
    x *= x
    x %= 10
    n /= 2
  end
  res % 10
end

puts pow_mod(n, m)
