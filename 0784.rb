s = gets.chomp
m = s.length % 3
s = ' '*(0==m ? 0 : (3-m)) + s
puts s.each_char.each_slice(3).map(&:join).join(',').strip
