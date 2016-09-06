s, t, u = gets.chomp.split

t, u = [t, u].map(&:to_i)
a = [t, u].uniq.sort.reverse
a.each do |i|
  s[i] = ''
end
puts s
