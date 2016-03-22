n = gets.chomp.each_char.map(&:to_i).inject(&:+)

if n.nil?
  puts 0
else
  puts n
end
