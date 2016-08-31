n = gets.to_i
x = gets.split.map(&:to_i).sort

d = x[1] - x[0]
n.times do |i|
  next if i < 2
  if x[i] == x[i-1] || (x[i] - x[i-1]) != d
    puts 'NO'
    exit 0
  end
end
puts 'YES'
