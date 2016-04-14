n = gets.to_i

total = 0
type = 0
n.times do
  t, s = gets.chomp!.split
  t = t.to_i
  total += s.length
  type += [ (12*t / 1000).ceil, s.length ].min
end
puts "#{type} #{total-type}"
