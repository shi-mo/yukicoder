a, b = 2.times.map{ gets.chomp!.each_char.sort.join }

puts (a == b) ? 'YES' : 'NO'
