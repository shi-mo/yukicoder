s = gets.chomp!

def solve(a, s)
  return [a + s] if s.length <= 1

  solve(a + s[-1], s[0..-2]) + solve(a + s[0], s[1..-1])
end
puts solve("", s).uniq.size
