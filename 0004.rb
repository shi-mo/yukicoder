n = gets.to_i
w = gets.chomp!.split.map(&:to_i)

s = w.inject(:+)
if s.odd?
  puts 'impossible'
  exit 0
end

dp = [ true ]
(n-1).times do |i|
  (dp.size - 1).downto(0) do |j|
    dp[j + w[i]] |= dp[j]
  end
end

puts dp[s/2] ? 'possible' : 'impossible'
