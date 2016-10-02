n, k, x = gets.split.map(&:to_i)
swap = []
k.times do
  swap <<  gets.split.map(&:to_i)
end
c = gets.split.map(&:to_i)

s = (1..n).to_a
k.times do
  a, b = swap.shift
  break if 0 == a
  t = s[a-1]
  s[a-1] = s[b-1]
  s[b-1] = t
end

swap.reverse.each do |a, b|
  t = c[a-1]
  c[a-1] = c[b-1]
  c[b-1] = t
end

ax = []
n.times do |i|
  next if c[i] == s[i]
  ax << i+1
end
puts ax.sort.join(' ')
