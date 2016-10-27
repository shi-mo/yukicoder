s = gets.chomp

rmax = eval(s)
n = s.length
1.upto(n-1) do |i|
  exp = s[i..(n-1)] + s[0..(i-1)]
  next if '+-'.include?(exp[0])
  next if '+-'.include?(exp[-1])

  exp.gsub!(/([+-])[0]+(.+)$/o){|_| $1+$2 }
  rmax = [rmax, eval(exp)].max
end
puts rmax
