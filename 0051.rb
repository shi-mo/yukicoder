w, d = 2.times.map{ gets.to_i }
d.downto(2) do |i|
  w -= w/i/i
end
puts w
