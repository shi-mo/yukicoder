n, _ = gets.split.map(&:to_i)
s = gets.chomp!.split(//)

mat = Array.new(n+1){ [1] * (n+1) }
mat[0][0] = 0
pos = { x: 0, y: 0 }
s.each do |c|
  case c
  when 'U'
    pos[:y] += 1
  when 'R'
    pos[:x] += 1
  when 'L'
    pos[:x] -= 1
  when 'D'
    pos[:y] -= 1
  else
    raise 'must not happen'
  end
  mat[ pos[:y] ][ pos[:x] ] = 0
end

n.downto(0) do |i|
  puts mat[i].join(' ')
end
