s = gets.chomp

n = s.length
$dp_valid  = Array.new(n+1){ Array.new(n+1) }
$dp_answer = Array.new(n+1){ Array.new(n+1) }

def is_valid?(s, i, j)
  return $dp_valid[i][j] unless $dp_valid[i][j].nil?

  len = i - j
  return ($dp_valid[i][j] = true) if 1 == len

  center = (i + j) / 2
  if 0 == (len % 2)
    return $dp_valid[i][j] = (s[i..(center-1)] == s[center..(j-1)].reverse)
  end
  return $dp_valid[i][j] = (s[i..(center-1)] == s[(center+1)..(j-1)].reverse)
end

def solve(s, i, j)
  return $dp_answer[i][j] if $dp_answer[i][j]

  if i == j
    return $dp_answer[i][j] = 0
  end
  if is_valid?(s, i, j)
    return $dp_answer[i][j] = j - i
  end

  ans = 0
  (i+1).upto(j-1) do |k|
    ans = [ans, [solve(s, i, k), solve(s, k, j)].max].max
  end
  return $dp_answer[i][j] = ans
end

ans = 0
1.upto(n-1) do |k|
  ans = [ans, [solve(s, 0, k), solve(s, k, n)].max].max
end
puts ans
