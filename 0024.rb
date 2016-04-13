n = gets.to_i

possibility = [true]*10
n.times do
  *a, r = gets.chomp.split
  a = a.map(&:to_i)
  if 'YES' == r
    a = (0..9).to_a - a
  end
  a.each do |i|
    possibility[i] = false
  end
end

possibility.each.with_index do |p, i|
  next unless p
  puts i
  exit 0
end
