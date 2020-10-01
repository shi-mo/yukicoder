n = gets.to_i
x = []
n.times do
  a, b = gets.split.map(&:to_i)
  r = a.to_f / b
  x << [r, [a, b]]
end
x.sort_by!{|r, _| -r }
x.each{|_, x| puts x.map(&:to_s).join(' ') }
