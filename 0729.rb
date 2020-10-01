s = gets
i, j = gets.split.map(&:to_i)
ci, cj = s[i], s[j]
s[i] = cj
s[j] = ci
puts s
