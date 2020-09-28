n, k, t = gets.split.map(&:to_i)
puts ((n.abs.to_f / k) <= t) ? 'Yes' : 'No'
