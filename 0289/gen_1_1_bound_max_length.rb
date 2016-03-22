basename = '_1_1_bound_max_length'

open("#{basename}.input", 'w') do |f|
  f.puts '9' * 10000
end

open("#{basename}.output", 'w') do |f|
  f.puts 90000
end
