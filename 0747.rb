n = gets.chomp
k = gets.chomp

MOD6 = [ [0, 4, 2], [3, 1, 5] ].freeze
def pow_mod6(n, k)
  k2 = 2 + k[-1].to_i % 2
  if k.length <= 1 && k[-1] <= '2'
    k2 = k.to_i
  end

  n2 = n[-1].to_i % 2
  n3 = n.each_char.map(&:to_i).sum % 3
  n6 = MOD6[n2][n3]
  if n.length <= 1 && n[-1] <= '6'
    n6 = n.to_i
  end
  n6.pow(k2, 6)
end

puts '428571'[pow_mod6(n, k)]
