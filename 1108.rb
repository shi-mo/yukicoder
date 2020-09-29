_, h = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
puts t.map{|ti| ti + h }.join(' ')
