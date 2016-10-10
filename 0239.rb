n = gets.to_i
a = n.times.map{ gets.chomp.split }

renge = []
n.times do |j|
  valid = true
  n.times do |i|
    next if i == j
    next if 'nyanpass' == a[i][j]
    valid = false
    break
  end
  renge << j+1 if valid
end

puts (case renge.size
when 0
  -1
when 1
  renge[0]
else
  -1
end)
