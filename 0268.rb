l = gets.split.map(&:to_i)
r, b, y = gets.split.map(&:to_i)

lmin = 100 * 100 * 4 * 3
l.permutation do |l1, l2, l3|
  lmin = [lmin, r * (2*l3 + 2*l1) + b * (2*l1 + 2*l2) + y * (2*l2 + 2*l3)].min
end
puts lmin
