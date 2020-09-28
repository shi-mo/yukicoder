N = 2 * (10**5)
A = 10 ** 9
puts N
srand(0)
N.times do |i|
  print ' ' if 0 < i
  print rand(1..A).to_i
end
puts
