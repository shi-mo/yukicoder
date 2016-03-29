n = gets.to_i

def prime_numbers(n)
  p = []
  not_prime = []

  2.upto(n) do |i|
    next if not_prime[i]

    p << i
    (i*2).step(n, i) do |j|
      not_prime[j] = true
    end
  end
  p
end

$p = prime_numbers(n).reverse!
$dp = [ true, true ] # $dp[i] means you win or don't when i is given to you.
def black_wins?(n)
  return $dp[n] unless $dp[n].nil?

  white_loses = false
  $p.select{|k| k <= n }.each do |i|
    break if (white_loses |= !black_wins?(n-i))
  end
  $dp[n] = white_loses
end

puts black_wins?(n) ? 'Win' : 'Lose'
