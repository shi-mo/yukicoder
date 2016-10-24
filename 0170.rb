s = gets.chomp

def factorial(i)
  (1..i).to_a.inject(:*)
end

c = s.split(//o).group_by{|a| a }.map{|_, ary| ary.size }
n = factorial(s.length)
c.each do |m|
  n /= factorial(m)
end
puts n - 1
