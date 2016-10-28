s = gets.chomp

nmax = s.to_i
m = s.length
0.upto(m-2) do |i|
  1.upto(m-1) do |j|
    flipped = s.clone
    flipped[i] = s[j]
    flipped[j] = s[i]
    nmax = [nmax, flipped.to_i].max
  end
end
puts nmax
