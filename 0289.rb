n = gets.chomp.each_char.select{|c| ('1'..'9').include?(c) }.map(&:to_i).inject(&:+)

if n.nil?
  puts 0
else
  puts n
end
