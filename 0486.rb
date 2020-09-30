if /OOO|XXX/o !~ gets
  puts 'NA'
  return
end
puts ('OOO' == $&) ? 'East' : 'West'
