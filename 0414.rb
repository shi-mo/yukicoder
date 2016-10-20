m = gets.to_i

def get_divisor(n)
  i = 2
  x = n / 2
  while i <= x
    return i if 0 == (n % i)

    i += 1
    x = n / i
  end
  nil
end

d = get_divisor(m)
puts d ? "#{d} #{m/d}" : "1 #{m}"
