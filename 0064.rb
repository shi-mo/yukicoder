*f, n = gets.split.map(&:to_i)
f[2] = f[0] ^ f[1]
puts f[n%3]
