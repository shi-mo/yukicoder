s = gets.chomp.split(',').uniq
puts ('AC' == s[0] && 1 == s.size) ? 'Done!' : 'Failed...'
