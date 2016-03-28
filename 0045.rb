n = gets.to_i
v = [nil] + gets.chomp!.split.map(&:to_i)

dp_a = [ 0, v[1] ] # scores include i-th dish

2.upto(n) do |i|
  dp_a[i] = v[i] + dp_a[0..(i-2)].max
end

puts [ dp_a[n], dp_a[n-1] ].max
