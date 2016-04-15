def arg2st(arg)
  arg = char2num(arg) if /^["]/o =~ arg
  num2st arg.to_i
end

def char2num(arg)
  c = arg.sub(/^["]/o, '').sub(/["]$/o, '')
  c = "\n" if '\n' == c
  c.ord
end

def num2st(n)
  sign = (n < 0) ? '1' : '0'
  bin = sign + n.abs.to_s(2)
  bin.gsub(/0/o, 'S').gsub(/1/o, 'T')
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
