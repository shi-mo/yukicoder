n = gets.to_i

DAY = 24*60
total = 0
n.times do
  h1, m1, h2, m2 = gets.chomp!.split(/[: ]/o).map(&:to_i)
  time = (60*h2 + m2) - (60*h1 + m1)
  total += (0 <= time) ? time : (DAY+time)
end
puts total
