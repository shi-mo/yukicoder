require 'prime'

x = gets.to_i

if Prime.prime?(x)
  puts x
  exit 0
end

d = [1]
q = [1]
Prime.each(Math.sqrt(x)) do |i|
  next if 0 != x % i

  n = x
  while 0 == n % i
    n /= i
    d << i

    if q.include?(i)
      q.delete(i)
      next
    end

    q << i
  end
end

y = x / d.inject(:*)
if 1 < y
  q << y
end

puts q.inject(:*)
