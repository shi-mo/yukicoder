basename = '_1_5_bound_many_combinations'

num_cities = 50
num_between_cities = num_cities - 1
credits = num_between_cities
num_branches = 30
num_ways = num_branches * num_between_cities

delimiter = ' '.freeze

open("#{basename}.input", 'w') do |f|
  f.puts num_cities
  f.puts credits
  f.puts num_ways

  start_ids = Array.new(num_cities-1){|i| Array.new(num_branches, i+1) }.flatten
  f.puts start_ids.join(delimiter)
  
  terminal_ids = Array.new(num_cities-1){|i| Array.new(num_branches, i+2) }.flatten
  f.puts terminal_ids.join(delimiter)

  credits_for_ways = [ 1 ] * num_ways
  f.puts credits_for_ways.join(delimiter)

  times_for_ways = Array.new(num_cities-1){|i| (1..num_branches).to_a.map{|a| ((num_between_cities-i)**2) * (a-1) + 1 } }.flatten
  f.puts times_for_ways.join(delimiter)
end

open("#{basename}.output", 'w') do |f|
  f.puts num_between_cities
end
