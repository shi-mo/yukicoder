n = gets.to_i

fact = 1
sum_cost = 1
sum_i = 0
sum_ij = 0

2.upto(n) do |i|
  sum_ij += (i-1) * sum_i
  sum_cost = (i*sum_cost) + (2*fact) + (2*fact/(i-1)*sum_ij)
  fact *= i
  sum_i += i-1
end

printf "%.10f\n", (sum_cost.to_f / fact)
