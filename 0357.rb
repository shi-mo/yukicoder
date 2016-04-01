n, m = gets.split.map(&:to_i)
$score_table = Array.new(n){ Array.new(n, 0) }
m.times do
  i, j, s = gets.split.map(&:to_i)
  $score_table[i][j] = s
end

$mem = {}
def dfs(done, left)
  done.sort!
  return $mem[done] if $mem[done]
  return $mem[done] = 0 if left.empty?

  $mem[done] = left.map {|i|
    done.inject(0){|sum, j| sum + $score_table[i][j] } \
     + dfs(done+[i], left-[i]) \
  }.max
end
puts dfs([], (0...n).to_a)
