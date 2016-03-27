n = gets.to_i

$nmoves = []
$bc = []

def bitcount(i)
  $bc[i] ||= i.to_s(2).count('1')
end

def move_from(i, n)
  return unless $nmoves[i]

  [i + bitcount(i), i - bitcount(i)].each do |neighbor|
    next if (neighbor < 1) || (n < neighbor)

    nm_neighbor = $nmoves[i] + 1
    next if $nmoves[neighbor] && $nmoves[neighbor] <= nm_neighbor

    $nmoves[neighbor] = nm_neighbor
    move_from(neighbor, n)
  end
end

$nmoves[1] = 1
1.upto(n-1) do |i|
  move_from(i, n)
end
puts $nmoves[n] || -1
