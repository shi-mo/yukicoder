N = (2**32) - 1
a = N - (N%4) + 1
puts [a, N, N, N].join(' ')
