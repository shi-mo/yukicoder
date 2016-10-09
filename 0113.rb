s = gets.chomp.split(//)

x, y = 0, 0
s.each do |c|
  case c
  when 'N'
    y += 1
  when 'S'
    y -= 1
  when 'W'
    x -= 1
  when 'E'
    x += 1
  end
end
puts Math.sqrt((x ** 2) + (y ** 2))
