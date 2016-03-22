l = gets.to_i
n = gets.to_i
w = gets.chomp.split.map(&:to_i).sort!

sum = w.inject(:+)
n.downto(1) do |i|
  if sum <= l
    puts i
    break
  end
  sum -= w[i-1]
end
