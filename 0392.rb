m = gets.to_i
m.times do
  a = gets.to_i
  puts (a+1).to_s(2).tr('01', 'LR')[1..-1]
end
