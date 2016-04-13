w, h, c = gets.chomp!.split

char = ('B' == c) ? 'BW' : 'WB'
h.to_i.times do |i|
  w.to_i.times do |j|
    print char[(i%2 + j) % 2]
  end
  puts
end
