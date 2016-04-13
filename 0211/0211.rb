k = gets.to_i

c = Hash.new(0)
[2, 3, 5, 7, 11, 13].each do |i|
  [4, 6, 8, 9, 10, 12].each do |j|
    c[i*j] += 1
  end
end
puts c[k].to_f / 36
