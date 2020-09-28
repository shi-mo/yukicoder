require 'bigdecimal'

d = BigDecimal(gets.chomp, 12)
puts (d * 1.08).to_s('F')
