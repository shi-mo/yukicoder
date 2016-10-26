a1, a2, a3 = gets.split.map(&:to_i)

def is_kadomatsu(a1, a2, a3)
  (a1 < a2 && a3 < a2 && a1 != a3) || (a2 < a1 && a2 < a3 && a1 != a3)
end

if is_kadomatsu(a1, a2, a3)
  puts 'INF'
  exit 0
end

if a1 == a2 || a2 == a3 || a3 == a1
  puts 0
  exit 0
end

pmax = [a1, a2, a3].max
n = 0
1.upto(pmax) do |p|
  x, y, z = [a1, a2, a3].map{|ai| ai % p }

  next unless is_kadomatsu(x, y, z)
  n += 1
end
puts n
