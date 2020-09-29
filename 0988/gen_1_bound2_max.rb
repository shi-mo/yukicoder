NMAX = 10**5
VMAX = 10**9
puts "#{NMAX} #{NMAX} #{VMAX}"
print "* "
puts ([VMAX]*NMAX).join(' ')
NMAX.times{ puts VMAX }
