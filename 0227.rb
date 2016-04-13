a = gets.split.map(&:to_i).sort

c = a.uniq.group_by{|e| a.count(e) }
def hand_for(c)
  return 'FULL HOUSE' if c[3] && c[2]
  return 'THREE CARD' if c[3]
  return 'TWO PAIR' if c[2] && 2 == c[2].size
  return 'ONE PAIR' if c[2]
  'NO HAND'
end
puts hand_for(c)
