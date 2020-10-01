a = gets.split.map(&:to_i)
s = 0
a.each do |ai|
  m3 = (0 == ai % 3)
  m5 = (0 == ai % 5)
  s += (m3 && m5) ? 8 : (m3 || m5) ? 4 : ai.to_s.length
end
puts s
