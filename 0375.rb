n = gets.to_i

tmax = n - 1
tmin = tmax

d = [1]
2.upto(Math.sqrt(n)) do |i|
  next if 0 != n % i
  d << i
end

nd = d.size
nd.times do |i|
  i.upto(nd-1) do |j|
    a = d[i]
    b = d[j]
    next if 0 != n % (a*b)

    c = n / (a*b)
    tmin = [tmin, a + b + c - 3].min
  end
end

puts "#{tmin} #{tmax}"
