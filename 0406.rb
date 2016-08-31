n = gets.to_i
x = gets.split.map(&:to_i).sort

d = x[1] - x[0]
if 0 == d
  puts 'NO'
  exit 0
end

2.upto(n-1) do |i|
  if (x[i] - x[i-1]) != d
    puts 'NO'
    exit 0
  end
end
puts 'YES'
