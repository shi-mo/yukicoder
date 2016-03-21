basename = '_1_4_bound_many_ways_for_the_same_s-t_combination'

city_id_min = 1
city_id_max = 2
credits = 1
num_ways = 1500 # MAX

delimiter = ' '.freeze

open("#{basename}.input", 'w') do |f|
  f.puts city_id_max
  f.puts credits
  f.puts num_ways

  start_city_ids = [ city_id_min ] * num_ways
  f.puts start_city_ids.join(delimiter)
  
  terminal_city_ids = [ city_id_max ] * num_ways
  f.puts terminal_city_ids.join(delimiter)

  credits_for_ways = [ credits ] * num_ways
  f.puts credits_for_ways.join(delimiter)

  times_for_ways = (1..num_ways).to_a
  f.puts times_for_ways.join(delimiter)
end

open("#{basename}.output", 'w') do |f|
  f.puts 1
end
