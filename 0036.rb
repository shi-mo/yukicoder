require 'prime'

n = gets.to_i

if 1 == n
  puts 'NO'
  exit 0
end

if Prime.prime?(n)
  puts 'NO'
  exit 0
end

c = 0
x = n
i = 1
while i <= x
  break if 3 <= c

  i += 1
  next if 0 != x % i

  while 0 == x % i
    c += 1
    x /= i
  end
  if Prime.prime?(x)
    c += 1
    break
  end
end
puts 3 <= c ? 'YES' : 'NO'
