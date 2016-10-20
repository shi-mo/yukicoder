require 'bigdecimal'

x = gets.to_i

if 0 == x
  puts '1 0'
  exit 0
end

if 31 < x
  puts '0 0'
  exit 0
end

def c(n, k)
  r = BigDecimal(1)
  1.upto(n){|i| r *= BigDecimal(i) }
  1.upto(k){|i| r /= BigDecimal(i) }
  1.upto(n-k){|i| r /= BigDecimal(i) }
  r
end

cnt = c(31, x)
sum = (2**31 - 1) * c(30, x-1)

puts "#{cnt.to_i} #{sum.to_i}"
