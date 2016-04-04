s = gets.chomp!
t, r, e = %w(t r e).map{|c| s.count(c) }
e /= 2
puts [t, r, e].min
