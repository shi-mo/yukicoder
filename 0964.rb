n = gets.to_i
if 1 == n
  puts 1
  return
end

s = ''
(n-1).downto(0){|i| s += i.to_s * n }
puts s
