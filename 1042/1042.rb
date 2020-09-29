require 'bigdecimal'

P, Q = gets.split.map(&:to_i)

def is_ok(n)
  n**2 <= P + Q * n * Math.log2(n)
end

ok = BigDecimal(1)
ng = BigDecimal(10 ** 18)
DELTA = 10 ** (-6)
while DELTA < ng - ok
  m = (ok + ng) / 2
  if is_ok(m)
    ok = m
    next
  end
  ng = m
end
printf "%.9f\n", ok
