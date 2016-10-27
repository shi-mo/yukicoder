require 'bigdecimal'

n = gets.to_i

q = BigDecimal('3', 12) / 4
puts ((q ** n) * 4).to_s('F')
