s = gets.chomp.split
HOLIDAY = ['Sat', 'Sun']
puts HOLIDAY.include?(s[0]) ? (HOLIDAY.include?(s[1]) ? '8/33' : '8/32') : '8/31'
