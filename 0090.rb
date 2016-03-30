n, m = gets.split.map(&:to_i)
score_table = Array.new(n){ Array.new(n, 0) }
m.times do
  i, j, s = gets.split.map(&:to_i)
  score_table[i][j] = s
end

def score(perm, score_table)
  s = 0
  perm.size.times do |j|
    j.times do |i|
      s += score_table[perm[i]][perm[j]]
    end
  end
  s
end

max_score = 0
(0..(n-1)).to_a.permutation do |perm|
  max_score = [ max_score, score(perm, score_table) ].max
end
puts max_score
