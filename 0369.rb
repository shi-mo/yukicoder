n = gets.to_i
sum = gets.chomp.split.map(&:to_i).inject(:+)
v = gets.to_i
puts sum - v
