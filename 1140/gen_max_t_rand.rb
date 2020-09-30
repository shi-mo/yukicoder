srand(ARGV[0].to_i)
T = 5 * (10**5)
A = 10**18
P = 5 * (10**6)
puts T
T.times{ puts "#{rand(A)+1} #{rand(P)+1}" }
