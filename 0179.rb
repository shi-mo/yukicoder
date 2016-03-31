h, w = gets.split.map(&:to_i)
s = h.times.map{ gets }
board = { h: h, w: w, s: s }

def is_empty?(board)
  board[:s].each do |row|
    return false if row =~ /#/o
  end
  true
end

def include_index?(board, i, j)
  0 <= i && i < board[:h] && 0 <= j && j < board[:w]
end

def can_paint_bicolor?(board, dx, dy)
  h, w = board[:h], board[:w]
  checked = Array.new(h){ Array.new(w, false) }

  result = true
  h.times do |i|
    break unless result

    w.times do |j|
      break unless result

      next if checked[i][j]
      next if '#' != board[:s][i][j]

      checked[i][j] = true
      ni, nj = i + dx, j + dy
      if !include_index?(board, ni, nj) || '#' != board[:s][ni][nj]
        result = false
        break
      end
      checked[ni][nj] = true
    end
  end
  result
end

if is_empty?(board)
  puts 'NO'
  exit 0
end

ok = false
h.times do |dx|
  break if ok
  ((1-w)...w).each do |dy|
    break if ok
    next if 0 == dx && 0 == dy

    ok |= can_paint_bicolor?(board, dx, dy)
  end
end
puts ok ? 'YES' : 'NO'
