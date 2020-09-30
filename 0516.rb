c = { RED: 0, BLUE: 0 }
3.times{ c[gets.chomp.to_sym] += 1 }
puts (c[:RED] < c[:BLUE]) ? 'BLUE' : 'RED'
