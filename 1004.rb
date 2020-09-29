_, _, x0, n = gets.split.map(&:to_i)
puts (0 == x0%2) ? "0 #{n/2}" : "#{n/2} 0"
