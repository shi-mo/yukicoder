n = gets.to_i
s = gets.chomp

if 4 <= n
  puts 'YES'
  exit 0
end

if s.include?('00') || s.include?('11')
  puts 'YES'
  exit 0
end

puts 'NO'
