w, h, n = 3.times.map{ gets.to_i }
sk = n.times.map{ gets.split.map(&:to_i) }

s2k = sk.group_by{|s, k| s }
k2s = sk.group_by{|s, k| k }
s = s2k.keys

num_match = 0
s2k.each do |s, elems|
  num_match += h - elems.size
end

k2s.each do |k, elems|
  num_match += w - elems.size
  num_match -= (s - elems.map{|si, _| si }).size
end

puts num_match
