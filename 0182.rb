n = gets.to_i
a = gets.chomp!.split

c = {}
a.each{|ai| c[ai] ||= 0; c[ai] += 1 }
puts (a.group_by{|ai| c[ai] }[1] || []).size
