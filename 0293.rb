a, b = gets.split.map(&:to_i)

if a == b
  puts a
  exit 0
end

sa, sb = [a, b].map{|n| sprintf "%010d", n }

10.times do |i|
  ca = sa[i].to_i
  cb = sb[i].to_i

  next if ca == cb

  if 4 == ca && 7 == cb
    puts a
    exit 0
  end
  if 7 == ca && 4 == cb
    puts b
    exit 0
  end

  puts (ca < cb) ? b : a
  exit 0
end

warn 'must not happen'
exit 1
