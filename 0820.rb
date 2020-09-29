n, k = gets.split.map(&:to_i)
puts (n < k) ? 0 : 2**(n-k)
