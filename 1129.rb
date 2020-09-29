NameX = 'null'
NameY = 'tRue'
Draw  = 'Draw'

def winner(rx, hx, ry, hy)
  return NameX if ry < rx
  return NameY if rx < ry
  return Draw  if hx == hy
  case hx
  when 0
    (1 == hy) ? NameX : NameY
  when 1
    (2 == hy) ? NameX : NameY
  when 2
    (0 == hy) ? NameX : NameY
  end
end

a, b, c, d = gets.split.map(&:to_i)
puts winner(a, b, c, d)
