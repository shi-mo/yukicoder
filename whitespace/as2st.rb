def arg2st(arg)
  return char2st(arg) if /["]/o =~ arg
  bin2st '0' + arg.to_i.to_s(2)
end

def char2st(arg)
  c = arg.gsub(/["]/o, '')
  c = "\n" if '\n' == c
  bin2st sprintf("%08b", c.ord)
end

def bin2st(s)
  s.gsub(/0/o, 'S').gsub(/1/o, 'T')
end

while s = gets
  unless /^([^ ]+)(?:[ ](.+))?/o =~ s.chomp!
    raise "Syntax error: #{s}"
  end
  cmd, arg = $1, $2

  case cmd
  when 'push'
    print 'SS' + arg2st(arg) + "\n"
  when 'sub'
    print "TSST"
  when 'mul'
    print "TSS\n"
  when 'div'
    print "TSTS"
  when 'retrieve'
    print "TTT"
  when 'putchar'
    print "T\nSS"
  when 'putnum'
    print "T\nST"
  when 'readchar'
    print "T\nTS"
  when 'readnum'
    print "T\nTT"
  when 'finish'
    print "\n"*3
  else
    raise "Command not implemented: #{cmd}"
  end
end
