h, w = gets.split.map(&:to_i)
a = []
h.times{ a << gets.split.map(&:to_i) }

b = a.flatten.sort
a = []
h.times do |i|
  s = i * w
  a << b[s..(s+w-1)]
end

h.times{|i| puts a[i].join(' ') }
