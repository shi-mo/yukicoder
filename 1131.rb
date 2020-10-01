n = gets.to_i
x = gets.split.map(&:to_i)
a = x.inject(:+).to_f / n
x.each do |xi|
  d = (a-xi).to_f / 2
  puts (50-d).floor
end
