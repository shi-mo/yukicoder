n = gets.to_i
v = [nil] + gets.chomp!.split.map(&:to_i)

dp_a = [ 0, v[1] ] # scores include i-th dish
dp_b = [ 0, 0    ] # scores without i-th dish

2.upto(n) do |i|
  dp_a[i] = v[i] + (dp_a[1..(i-2)] + dp_b[1..(i-1)]).max
  dp_b[i] = (dp_a[1..(i-1)] + dp_b[1..(i-1)]).max
end

puts [ dp_a[n], dp_b[n] ].max
