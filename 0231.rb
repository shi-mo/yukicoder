n = gets.to_i

dungeon = nil
exp_h = 0
n.times do |i|
  g, d = gets.split.map(&:to_i)
  exp = g - 30000 * d
  next if exp <= exp_h

  dungeon = i+1
  exp_h = exp
end

if (exp_h * 6) < 3000000
  puts 'NO'
  exit 0
end

puts 'YES'
6.times{ puts dungeon }
