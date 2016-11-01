s = gets.chomp.sub(/cw/o, 'c w').split

lc = s[0].length
lw = s[1].length
puts [ (lc-1), lw ].min
