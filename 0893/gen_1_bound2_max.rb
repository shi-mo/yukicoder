N = 1000
P = 100
A = 10000

puts N
N.times do |i|
  print P
  P.times do |j|
    print " #{i*P + j + 1}"
  end
  puts
end
