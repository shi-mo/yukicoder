n, k = gets.split.map(&:to_i)
s = gets.chomp!

stack = []
s.each_char.with_index do |c, i|
  j = i + 1
  if '(' == c
    stack << [j, (k == j)]
    next
  end

  v, mark = stack.pop
  if mark
    puts j
    break
  end
  if k == j
    puts v
    break
  end
end
