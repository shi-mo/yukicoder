s = gets.chomp
puts "#{s.scan('^*').length} #{s.scan('*^').length}"
