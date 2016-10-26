n = gets.to_i
s = gets.chomp

['00', '11', '1010', '0101'].each do |p|
  next unless s.include?(p)
  puts 'YES'
  exit 0
end

puts 'NO'
