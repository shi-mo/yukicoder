s = gets.chomp
m = gets.to_i
c = m.times.map{ gets.chomp }

n = 0
c.each do |ci|
  si = s
  while /#{ci}/ =~ si
    si = ($& + $')[1..]
    n += 1
  end
end
puts n
