w, h, n = 3.times.map{ gets.to_i }
sk = n.times.map{ gets.split.map(&:to_i) }

s = sk.map{|s, k| s }.uniq
k = sk.map{|s, k| k }.uniq

puts (w * h) - ((w - s.size) * (h - k.size)) - n
