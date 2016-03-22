puts gets.chomp.each_char.map(&:to_i).inject(&:+)
