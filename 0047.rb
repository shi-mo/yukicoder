n = gets.to_i

def msb(x)
  return 0 if 0 == x
  x.to_s(2).length
end

puts msb(n-1)
