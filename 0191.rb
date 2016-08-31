n = gets.to_i
c = gets.split.map(&:to_i)

t = c.inject(:+) / 10
puts 30 * c.select{|ci| ci <= t }.size
