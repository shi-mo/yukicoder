n = ARGV[0].to_i

s = ''
1.upto(n) do |i|
  if 0 == i%15
    s += 'FizzBuzz'
    next
  end
  if 0 == i%5
    s += 'Buzz'
    next
  end
  if 0 == i%3
    s += 'Fizz'
    next
  end
    s += i.to_s
end
puts s
