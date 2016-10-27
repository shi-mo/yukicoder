# encoding: utf-8

s = gets.chomp
if /^[ｗ]+/o =~ s
  s = $'
end

p = []
while /[ｗ]+/o =~ s
  p << [$`, $&.length]
  s = $'
end

if p.empty?
  puts
  exit 0
end

lmax = p.sort_by{|_, l| l }.last[1]
p.select{|_, l| lmax == l }.map{|p_, l| p_ }.each do |p_|
  puts p_
end
