n = gets.to_i
l = gets.split.map(&:to_i)

c = Hash.new(0)
l.each{|li| c[li] += 1 }
puts c.to_a.sort_by!{|e| e[1]*6 + e[0] }[-1][0]
