n = gets.to_i
puts (0 < n%90) ? 'No' : (1 != (n/90)%2) ? 'No' : 'Yes'
