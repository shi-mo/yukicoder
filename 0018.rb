s = gets.chomp

a = ('A'..'Z').to_a
cA = 'A'.ord

d = ''
s.each_char.with_index do |c, j|
  i = j + 1
  d += a[(c.ord - cA - i) % 26]
end
puts d
