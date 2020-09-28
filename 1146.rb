n = gets.to_i
a = []
n.times{ a << gets.to_i }

c = 0
n.times do |i|
  (i+1).upto(n-1) do |j|
    (j+1).upto(n-1) do |k|
      next if 1 != a[i].gcd( a[j].gcd(a[k]) )
      c += 1
    end
  end
end
puts c
