a, b = gets.chomp.split

if '0' == a && '0' == b
  puts 'E'
  exit 0
end

if '2' == a && '2' == b
  puts 'E'
  exit 0
end

if '0' == a || '0' == b
  puts 'S'
  exit 0
end

if '1' == a || '1' == b
  puts 'S'
  exit 0
end

puts 'P'
