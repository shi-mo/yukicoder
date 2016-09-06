s, t, u = gets.chomp.split

a = [t, u].map(&:to_i).uniq.sort.reverse
a.each do |i|
  s[i] = ''
end
puts s
