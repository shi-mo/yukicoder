s = gets
m = []
if /^[^c]?/ =~ s
  s = $'
end
while /c[^cw]*w[^w]*w/o =~ s
  m << $&.length
  s = s[1..-1]
end
puts m.empty? ? -1 : m.min
