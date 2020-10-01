n, _ = gets.split.map(&:to_i)
n.times do
  if gets.include?('LOVE')
    puts 'YES'
    return
  end
end
puts 'NO'
