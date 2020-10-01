n, h, x, y = gets.split.map(&:to_i)
a = gets.split.map{|ai| ai.to_i-1 }.sort!
c = a.map{|ai| Rational(ai, h).ceil }

if y <= x
  puts y * c.max
  exit
end
if n*x <= y
  puts c.map{|ci| ci*x }.sum
  exit
end

ny = Rational(y, x).ceil
cy = c[n - ny]
cx = c[(n-ny+1)..].map{|ci| ci - cy }.sum
puts x*cx + y*cy
