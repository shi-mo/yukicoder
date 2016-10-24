n = gets.to_i

if 1 == n
  puts '001'
  exit 0
end

def next_pos(i, j, phase)
  case phase % 4
  when 0
    [i, j+1]
  when 1
    [i+1, j]
  when 2
    [i, j-1]
  when 3
    [i-1, j]
  end
end

def include_pos?(i, j, n)
  0 <= i && i < n && 0 <= j && j < n
end

a = Array.new(n){ Array.new(n) }
i, j = 0, 0
phase = 0
1.upto(n*n) do |k|
  a[i][j] = k

  next_i, next_j = next_pos(i, j, phase)
  if !include_pos?(next_i, next_j, n) || a[next_i][next_j]
    phase += 1
    next_i, next_j = next_pos(i, j, phase)
    break if a[next_i][next_j]
  end
  i, j = next_i, next_j
end

a.each do |row|
  puts row.map{|v| sprintf "%03d", v }.join(' ')
end
