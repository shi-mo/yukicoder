s = gets.chomp
puts (/ai$/ =~ s) ? s[0..-3]+'AI' : s+'-AI'
