n, m = 2.times.map{ gets.to_i }
pq = m.times.map{ gets.split.map(&:to_i) }

pq.each do |p, q|
  if p == n
    n = q
    next
  end
  if q == n
    n = p
    next
  end
end

puts n
