a, b = 2.times.map{ gets.chomp! }

sorted_a, sorted_b = [a, b].map{|s| s.each_char.sort.join }
if sorted_a == sorted_b
  puts 'YES'
  exit 0
end
puts 'NO'
