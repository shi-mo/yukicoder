gets # discard N
a = gets.gsub(' ', '').to_i(2)
b = gets.gsub(' ', '').to_i(2)
xor = (a ^ b).to_s(2)
xor.gsub!(/1+/, '1')
xor.gsub!(/0+/, '')
puts xor.size
