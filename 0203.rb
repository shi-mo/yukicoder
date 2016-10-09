c = gets.chomp + gets.chomp

ans = 0
while /o+/o =~ c
  c = $'
  ans = [ans, $&.length].max
end
puts ans
