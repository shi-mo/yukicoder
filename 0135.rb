gets
x = gets.chomp!.split.map(&:to_i)

x.uniq!
x.sort!
n = x.size
d = (n-1).times.map{|i| x[i+1] - x[i] }
puts d.empty? ? 0 : d.min
