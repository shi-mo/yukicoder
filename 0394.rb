s = gets.split.map(&:to_i).sort

s.delete_at(5)
s.delete_at(0)
printf "%.2f\n", (s.inject(:+).to_f / 4)
