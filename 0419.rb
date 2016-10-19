a, b = gets.split.map(&:to_i).sort
printf "%.10f\n", (a == b) ? Math.sqrt(a*a + b*b) : Math.sqrt(b*b - a*a)
