n = gets.to_i

if 1 == n
  puts 0
  exit 0
end

puts (n-1).to_s(2).length
