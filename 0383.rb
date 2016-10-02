a, b = gets.split.map(&:to_i)
if a == b
  puts 0
  exit 0
end
print '+' if a < b
puts (b - a)
