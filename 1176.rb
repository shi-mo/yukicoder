a = gets.to_i
nm = a
# 2^59 < 10^18 < 2^60
1.upto(59) do |m|
  n = (a ** (1.to_f/m)).ceil
  temp = n * m
  nm = temp if temp <= nm
end
puts nm
