gets
a = gets.split.map{|x| Rational(x) }
gets
b = gets.split.map{|x| Rational(x) }

r = a.inject(:/)
b.each_with_index do |bi, i|
  if 0 != i%2
    r *= bi
    next
  end
  r /= bi
end
puts "#{r.numerator} #{r.denominator}"
