n = gets.to_i
a = []
n.times do |i|
  p, *ai = gets.split.map(&:to_i)
  p.times do |j|
    a[j] ||= []
    a[j][i] = ai[j]
  end
end
puts a.flatten.select{|x| !x.nil? }.join(' ')
