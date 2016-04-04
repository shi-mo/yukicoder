c = gets.to_i
ri, ro = gets.split.map(&:to_i)

printf "%.10f\n", c * (Math::PI**2) * (ro**2 - ri**2) * (ro - ri) / 4
