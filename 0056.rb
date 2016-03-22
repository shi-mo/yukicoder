require 'bigdecimal'

price, tax_rate = gets.split.map(&:to_i)
rate = BigDecimal(100 + tax_rate) / 100
puts (price * rate).to_i
