def load_int(io)
  io.gets.to_i
end

def load_int_array(io)
  io.gets.chomp.split.map(&:to_i)
end

def load_problem(io)
  num_cities = load_int(io)
  cost_limit = load_int(io)
  num_ways   = load_int(io)

  s = load_int_array(io)
  t = load_int_array(io)
  y = load_int_array(io)
  m = load_int_array(io)

  ways = []
  num_ways.times do |i|
    ways << { start: s[i], terminal: t[i], cost: y[i], time: m[i] }
  end
  ways_from = ways.group_by{|way| way[:start] }

  [ num_cities, cost_limit, num_ways, ways_from ]
end

def main
  num_cities, cost_limit, num_ways, ways_from = load_problem(STDIN)

  candidates = [ { pos: 1, cost: 0, time: 0 } ]
  result = nil

pos_head = 1
  until candidates.empty?
    candidates.sort_by!{|c| c[:time] }

    current = candidates.shift
    if num_cities == current[:pos]
      result = current
      break
    end

    next unless ways_from[current[:pos]]

    ways_from[current[:pos]].each do |next_way|
      cost = current[:cost] + next_way[:cost]
      time = current[:time] + next_way[:time]
      next if cost_limit < cost
      candidates.unshift({ pos: next_way[:terminal], cost: cost, time: time })
    end
  end

  if result.nil?
    puts -1
    exit 0
  end
  puts result[:time]
end

main
