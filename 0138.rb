a = gets.chomp!.split(/\./).map(&:to_i)
b = gets.chomp!.split(/\./).map(&:to_i)

a.size.times do |i|
  break if b[i] < a[i] 
  next if b[i] == a[i] 

  puts 'NO'
  exit 0
end
puts 'YES'
