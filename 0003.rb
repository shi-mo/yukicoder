n = gets.to_i

$nmoves = []
$bc = []

def bitcount(i)
  $bc[i] ||= i.to_s(2).count('1')
end

def move_from(i, n)
  return unless $nmoves[i]

  fwd = i + bitcount(i)
  if fwd <= n
    n_fwd = $nmoves[i] + 1
    if $nmoves[fwd].nil? || n_fwd < $nmoves[fwd]
      $nmoves[fwd] = n_fwd
      move_from(fwd, n)
    end
  end

  back = i - bitcount(i)
  return if back < 1

  n_back = $nmoves[i] + 1
  return if $nmoves[back] && $nmoves[back] <= n_back

  $nmoves[back] = n_back
  move_from(back, n)
end

$nmoves[1] = 1
1.upto(n-1) do |i|
  move_from(i, n)
end
puts $nmoves[n] || -1
