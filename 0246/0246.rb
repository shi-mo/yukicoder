MAX = 10 ** 9
l, u = 1, MAX

while l != u
  c = (0.5 * (u + l)).ceil
  puts "? #{c}"
  STDOUT.flush

  if '1' == gets.chomp!
    l = c
    next
  end
  u = c - 1
end

puts "! #{u}"
STDOUT.flush
