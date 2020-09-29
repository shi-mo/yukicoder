a, b = gets.split.map(&:to_i)
n = 2 * [a, b].min
n -= 1 if a == b
puts n
