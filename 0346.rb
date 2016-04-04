s = STDIN.read
n = s.length - 1

nw = 0
a = [0]
n.downto(0) do |i|
  case s[i]
  when 'w'
    nw += 1
  when 'c'
    a << nw
  else
    # do nothing
  end
end

puts a.map{|n| n*(n-1)/2 }.inject(:+)
