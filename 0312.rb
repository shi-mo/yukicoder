require 'prime'

n = gets.to_i

if Prime.prime?(n)
  puts n
  exit 0
end

if 0 == n % 3
  puts 3
  exit 0
end

if 0 == n % 4
  puts 4
  exit 0
end

if 0 == n % 2 &&  Prime.prime?(n/2)
  puts n/2
  exit 0
end

Prime.each(n) do |i|
  next if 2 == i
  next if 0 != n % i

  puts i
  exit 0
end
