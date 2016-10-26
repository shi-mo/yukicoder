s = gets.chomp

unless /([-+]?\d+)([+-])([-+]?\d+)/o =~ s
  warn 'must not happen'
  exit 1
end

x, op, y = $1.to_i, $2, $3.to_i

res = case op
when '+'
  x - y
else
  x + y
end
puts res
