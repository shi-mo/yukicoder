n = gets.to_i

$nmoves = []
$bc = []

def bitcount(i)
  $bc[i] ||= i.to_s(2).count('1')
end

def move_from(i, n)
  return unless $nmoves[i]

  move(i, i + bitcount(i), n)
  move(i, i - bitcount(i), n)
end

def move(from, to, n)
  return if (to < 1) || (n < to)
  
  nm = $nmoves[from] + 1
  return if $nmoves[to] && $nmoves[to] <= nm
  
  $nmoves[to] = nm
  move_from(to, n)
end

$nmoves[1] = 1
1.upto(n-1) do |i|
  move_from(i, n)
end
puts $nmoves[n] || -1
