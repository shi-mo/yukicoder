require 'bigdecimal'

d = BigDecimal.new(gets.chomp, 12)
puts (d * 1.08).to_s('F')
