a = gets.split.map(&:to_i).sort!
a0 = a[0]
a.map!{|ai| ai - a0 }
puts ([0, 1, 2, 3] == a) ? 'Yes' : 'No'
