D = (10**9) + 7
gets # discard N
a = gets.split.map(&:to_i)
if a.min <= 0
 puts '-1'
 return
end
if 4 <= a.max
  puts D
  return
end

m = 1
a.each do |ai|
  factor = (1..ai).inject(:*)
  m *= ai**factor
  if D <= m
    puts D
    return
  end
end
puts D % m
