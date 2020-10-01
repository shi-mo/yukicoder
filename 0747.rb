n = gets.chomp
k = gets.chomp

MOD6 = [ [0, 4, 2], [3, 1, 5] ].freeze
k2 = 2 + k[-1].to_i % 2
n2 = n[-1].to_i % 2
n3 = n.each_char.map(&:to_i).sum % 3
n6 = MOD6[n2][n3]
puts '428571'[n6.pow(k2, 6)]
