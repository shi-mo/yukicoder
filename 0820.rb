n, k = gets.split.map(&:to_i)
puts (n < k) ? 0 : (n == k) ? 1 : 2**(n-k)
