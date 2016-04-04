n = gets.to_i

lw = []; m = 0
n.times do
  a, b = gets.split.map(&:to_i)
  w = a + 4*b
  lw << w
  m = (m < w) ? w : m
end

d = lw.map{|w| m - w }
puts d.index{|di| 1 == di % 2 }.nil? ? d.inject(:+)/2 : -1
