s = gets.chomp

n = s.length

def is_valid?(s, i, j)
  len = i - j
  return true if 1 == len

  center = (i + j) / 2
  if 0 == (len % 2)
    return s[i..(center-1)] == s[center..(j-1)].reverse
  end
  s[i..(center-1)] == s[(center+1)..(j-1)].reverse
end

ans = [1]
0.upto(n-1) do |i|
  i.upto(n) do |j|
    ans << (j-i) if is_valid?(s, i, j)
  end
end
puts (ans - [n]).max
