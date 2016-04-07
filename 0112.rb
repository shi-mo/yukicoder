n = gets.to_i
sa = gets.split.map(&:to_i).inject(:+)

msa = n * (n-1) * 4
x = (msa - sa) / (n-1) / 2
puts "#{x} #{n-x}"
