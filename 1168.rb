n = gets.chomp
100.times do
  break if n.length <= 1
  n = n.split(//).map(&:to_i).inject(:+).to_s
end
puts n
