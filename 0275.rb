n = gets.to_i
a = gets.chomp.split.map(&:to_i).sort!

if 0 != n%2
  puts a[n/2] # array index begins from 0 (not 1).
  exit 0
end

m = (a[(n/2)-1].to_f + a[n/2]) / 2
if (m - m.to_i).zero?
  puts m.to_i
  exit 0
end
puts m
