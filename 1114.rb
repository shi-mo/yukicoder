n = gets.to_i
a = [n]
(n-1).downto(1) do |i|
  break if i <= (n-i)
  a.unshift i
end
puts a.join(' ')
