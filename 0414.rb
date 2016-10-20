m = gets.to_i

def get_divisor(n)
  2.upto(Math.sqrt(n)) do |i|
    return i if 0 == (n % i)
  end
  nil
end

d = get_divisor(m)
puts d ? "#{d} #{m/d}" : "1 #{m}"
