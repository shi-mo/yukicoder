s = gets.chomp!

t = s.gsub(/[+*]/o){|c| " #{c} " }.split
while 3 <= t.size
  a, op, b = t[0..2]
  a, b = [a, b].map(&:to_i)
  t[0] = ('*' == op) ? (a + b) : (a * b)
  t.delete_at(2)
  t.delete_at(1)
end
puts t[0]
