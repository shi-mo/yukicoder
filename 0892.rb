a1, _, a2, _, a3, _ = gets.split.map(&:to_i)
puts (0 == (a1+a2+a3)%2) ? ':-)' : ':-('
