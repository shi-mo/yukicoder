n = gets.to_i
a = gets.chomp!.split.map(&:to_i)

c = {}
a.each{|ai| c[ai] ||= 0; c[ai] += 1 }
puts (a.group_by{|ai| c[ai] }[1] || []).size
