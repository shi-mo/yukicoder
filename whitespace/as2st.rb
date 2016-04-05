def char2st(arg)
  c = arg.gsub(/["]/o, '')
  c = "\n" if '\n' == c
  sprintf("%08b", c.ord).gsub(/0/o, 'S').gsub(/1/o, 'T')
end

while s = gets
  unless /^([^ ]+)(?:[ ](.+))?/o =~ s.chomp!
    raise "Syntax error: #{s}"
  end
  cmd, arg = $1, $2

  case cmd
  when 'push'
    print 'SS' + char2st(arg) + "\n"
  when 'putchar'
    print "T\nSS"
  when 'finish'
    print "\n"*3
  else
    raise "Command not implemented: #{cmd}"
  end
end
