n, l = gets.split.map(&:to_i)
D = 998244353

n = Rational(n, l).ceil
puts (2.pow(n, D) - 1) % D
