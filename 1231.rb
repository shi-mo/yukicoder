gets # discard N
a = gets.split.map(&:to_i).map{|ai| ai % 10 }

dp = [-1] * 10
dp[0] = 0
a.each do |ai|
  next_dp = [-1] * 10
  10.times do |j|
    next if dp[j] < 0 # cannot make j

    if next_dp[j] < dp[j] # use a[0]..a[i-1]
      next_dp[j] = dp[j]
    end
    r = (j + ai) % 10
    if next_dp[r] < (dp[j] + 1) # use a[i]
      next_dp[r] = dp[j] + 1
    end
  end
  dp = next_dp
end
puts dp[0]
