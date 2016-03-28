n = gets.to_i
v = [nil] + gets.chomp!.split.map(&:to_i)

dp  = [ 0, v[1] ]
2.upto(n) do |i|
  dp[i] = [ v[i] + dp[i-2], dp[i-1] ].max
end

puts dp[n]
