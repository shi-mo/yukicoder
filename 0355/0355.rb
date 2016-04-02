def query(n)
  puts n.join(' ')
  STDOUT.flush
end

def reply
  x, y = gets.split.map(&:to_i)
  exit 0 if 4 == x
  x + y
end

def detect_combination
  candidates = (0..9).to_a.combination(4).to_a.shuffle!

  while candidates
    q = candidates.shift
    query q
    grouped = candidates.group_by{|c| num_common_elements(q, c) }
    n = reply
    return q if 4 == n
    candidates = grouped[n]
  end
  raise 'must not happen'
end

def num_common_elements(q, c)
  (c & q).size
end

def detect_sequence(n)
  n.permutation do |n_|
    query n_
    reply
  end
end

detect_sequence(detect_combination)
