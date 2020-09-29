require 'bigdecimal'
n = gets.to_i
sum = BigDecimal('0', 11)
n.times do
  sum += BigDecimal(gets.chomp, 11)
end
d, f = sum.to_s('F').split('.')
f10 = '0'*10
f10[0..(f.length-1)] = f
puts "#{d}.#{f10}"
