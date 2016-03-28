n = gets.to_i
v = [nil] + gets.chomp!.split.map(&:to_i)

dp  = [ 0, v[1] ] # scores include i-th dish
max = [ 0, v[1] ] # max value of dp[0..i]

2.upto(n) do |i|
  dp[i] = v[i] + max[i-2]
  max[i] = [ dp[i], max[i-1] ].max
end

puts [ dp[n], dp[n-1] ].max
