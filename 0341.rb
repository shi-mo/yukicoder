# encoding: utf-8

s = gets.chomp

n = 0
while /[…]+/o =~ s
  n = [n, $&.length].max
  s = $'
end
puts n
