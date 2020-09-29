h, w = gets.split.map(&:to_i)
a = []
h.times{ a.concat gets.split.map(&:to_i) }

a.sort!
h.times do |i|
  s = i * w
  puts a[s..(s+w-1)].join(' ')
end
