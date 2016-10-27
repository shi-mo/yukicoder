require 'bigdecimal'

n, m = 2.times.map{ gets.to_i }

def fact_part(n, k)
  k.times.map{|i| BigDecimal(n-i) }.inject(:*)
end

def c(n, k)
  k = n-k if n-k < k && 0 < n-k
  (fact_part(n, k) / fact_part(k, k)).to_i
end

r = (n / 1000) % m
puts (0 == r) ? 1 : (c(m, r) % (10 ** 9))
