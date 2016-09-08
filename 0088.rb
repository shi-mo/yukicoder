player = %w(oda yukiko)

s = player.index(gets.chomp)
n = 0
8.times do
  n += gets.chomp.gsub(/\./o, '').length
end

puts player[(s + n) % 2]
