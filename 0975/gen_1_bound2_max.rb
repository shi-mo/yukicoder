L = 10**5
puts "#{L} #{L} #{L}"
2.times{ puts (1..L).to_a.map(&:to_s).join(' ') }
