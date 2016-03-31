n = gets.to_i
a = n.times.map{ gets.chomp! }

count_for = {}
a.each do |e|
  count_for[e] ||= 0
  count_for[e] += 1
end

most, c = count_for.sort_by{|k, v| -v }.first
c_rest = n - c
puts (c-1 <= c_rest) ? 'YES' : 'NO'
