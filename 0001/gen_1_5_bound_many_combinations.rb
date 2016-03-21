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

  start_city_ids = Array.new(num_cities-1){|i| Array.new(num_branches, i+1) }.flatten
  f.puts start_city_ids.join(delimiter)
  
  terminal_city_ids = Array.new(num_cities-1){|i| Array.new(num_branches, i+2) }.flatten
  f.puts terminal_city_ids.join(delimiter)

  credits_for_ways = [ 1 ] * num_ways
  f.puts credits_for_ways.join(delimiter)

  times_for_ways = [ 100 ] * num_ways
  f.puts times_for_ways.join(delimiter)
end

open("#{basename}.output", 'w') do |f|
  f.puts(100 * num_ways)
end
