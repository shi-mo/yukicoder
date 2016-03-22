basename = '_1_1_bound_max_elements_positive_values'

open("#{basename}.input", 'w') do |f|
  f.puts 1000
  f.puts (1..1000).to_a.map(&:to_s).join(' ')
end

open("#{basename}.output", 'w') do |f|
  f.puts 500.5
end
