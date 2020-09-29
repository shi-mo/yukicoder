n, m, k = gets.split.map(&:to_i)
op, *b = gets.chomp.split
b.map!(&:to_i)
a = []
n.times{ a << gets.to_i }

if '+' == op
  sumam = m * a.inject(:+) % k
  sumbn = n * b.inject(:+) % k
  puts (sumam + sumbn) % k
  return
end

suma = a.inject(:+) % k
puts b.map{|bi| bi * suma % k }.inject(:+) % k
