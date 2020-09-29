n = gets.to_i
pos = []
n.times{ pos << gets.split.map(&:to_i) }
DELTA = 10**(-8)

result = 0
n.times do |i|
  (i+1).upto(n-1) do |j|
    x1, y1 = pos[i]
    x2, y2 = pos[j]
    if x1 == x2
      result = [result, pos.select{|p| x1 == p[0]}.size].max
      next
    end
    t = 2
    (j+1).upto(n-1) do |k|
      x, y = pos[k]
      dx2 = x2 - x1
      dy2 = y2 - y1
      dx = x - x1
      dy = y - y1
      if (dy2.to_f / dx2 * dx - dy).abs < DELTA
        t += 1
      end
    end
    result = [result, t].max
  end
end
puts result
