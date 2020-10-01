gets.to_i.times do
  n = gets.to_i
  puts (0 == n%40) ? 'ikisugi' : (0 == n%10) ? 'sugi' : (0 == n%8) ? 'iki' : (n/3)
end
