0.upto(999) do |i|
  printf("%03d\n", i)
  STDOUT.flush
  break if 'unlocked' == gets.chomp!
end
