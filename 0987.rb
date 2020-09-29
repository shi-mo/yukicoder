n, m = gets.split.map(&:to_i)
op, *b = gets.chomp.split
b.map!(&:to_i)
a = []
n.times{ a << gets.to_i }

n.times do |i|
  m.times do |j|
    print ' ' if 0 != j
    print [a[i], b[j]].inject(:"#{op}")
  end
  puts
end
