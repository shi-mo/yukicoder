n = gets.to_i
p = []; n.times{ p << gets.to_i }

p.each do |pi|
  if 2 == pi
    puts 2
    next
  end
  puts (pi-1) ** 2
end
