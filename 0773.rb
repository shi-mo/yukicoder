a, b = gets.split.map(&:to_i)
r = (a..b).to_a
c = 3
[23, 24, 25].each do |d|
  c -= 1 if r.include?(d)
end
puts c
