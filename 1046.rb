_, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort_by{|x| -x }
puts ([a[0]] + a[1...k].reject{|x| x < 0 }).inject(:+)
