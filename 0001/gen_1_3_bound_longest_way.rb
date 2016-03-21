basename = '_1_3_bound_longest_way'

city_id_min = 1
city_id_max = 50
credits_max = 300
num_ways = city_id_max - 1
time_for_way_max = 1000

delimiter = ' '.freeze

open("#{basename}.input", 'w') do |f|
  f.puts city_id_max
  f.puts credits_max
  f.puts num_ways

  start_city_ids = ( city_id_min .. (city_id_max-1) ).to_a
  f.puts start_city_ids.join(delimiter)
  
  terminal_city_ids = ( (city_id_min+1) .. city_id_max ).to_a
  f.puts terminal_city_ids.join(delimiter)

  credits_for_ways = [ credits_max / num_ways ] * num_ways
  f.puts credits_for_ways.join(delimiter)

  times_for_ways = [ time_for_way_max ] * num_ways
  f.puts times_for_ways.join(delimiter)
end

open("#{basename}.output", 'w') do |f|
  f.puts(time_for_way_max * num_ways)
end
