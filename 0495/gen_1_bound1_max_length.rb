N = 20000 - 1
b = ['(^^*)', '(*^^)']
srand(0)
c = [0, 0]
N.times{ lr = rand(2); print b[lr]; c[lr]+=1 }
puts '#'
warn "#{c[0]} #{c[1]}"
