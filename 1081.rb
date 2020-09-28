n = gets.to_i
a = gets.chomp.split.map(&:to_i)
D = (10**9) + 7

c = [1, 1]
3.upto(n) do |i|
  d = [1]
  (i-2).times do |j|
    d << c[j] + c[j+1]
  end
  d << 1
  c = d
end

q = 0
n.times do |i|
  q += (a[i] * c[i]) % D
end
puts (q % D)
