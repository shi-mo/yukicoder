gets
x = gets.split.map(&:to_i)

x.uniq!
x.sort!
d = (x.size-1).times.map{|i| x[i+1] - x[i] }
puts d.empty? ? 0 : d.min
