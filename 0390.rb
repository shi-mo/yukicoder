n = gets.to_i
x = gets.chomp.split.map(&:to_i).sort

xmax = x.max
dp = Array.new(xmax + 1)
x.each do |xi|
  dp[xi] = 1
end

answer = 0
x.each do |xi|
  (xi*2).step(xmax, xi) do |j|
    next unless dp[j]

    dp[j] = [ dp[j], dp[xi]+1 ].max
  end
  answer = [ answer, dp[xi] ].max
end
puts answer
