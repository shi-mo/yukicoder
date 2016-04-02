$count = {}

def try(n)
  return $count[n] if $count[n]

  puts n.join(' ')
  STDOUT.flush

  x, y = gets.split.map(&:to_i)
  $count[n] = x+y

  exit 0 if 4 == x
  x+y
end

def detect_combination
  count_for_pairs || choose_series_from_pairs
end

def count_for_pairs 
  pairs = (0..7).each_slice(2).to_a
  pairs.each do |p|
    n1, n2 = divide_numbers(p)
    [n1, n2].each do |n|
      return n if 4 == try(n)
    end
    $count[p] = 4 - $count[n1] - $count[n2]
  end

  $count[[8, 9]] = 4 - pairs.map{|p| $count[p] }.inject(:+)
  n = [0, 1, 2, 3]
  return n if 4 == try(n)
  nil
end

def divide_numbers(exclude_pair)
  start = exclude_pair[1] + 1
  a = (start...(start+8)).to_a.map{|i| (9 < i) ? i-10 : i }
  [ a[0..3], a[4..7] ]
end

def choose_series_from_pairs
  pairs = (0..9).each_slice(2).to_a
  c2_pairs = pairs.select{|p| 2 == $count[p] }
  c1_pairs = pairs.select{|p| 1 == $count[p] }

  case c2_pairs.size
  when 2
    return c2_pairs.flatten!
  when 1
    raise 'must not happen' if 2 != c1_pairs.size
    p2 = c2_pairs[0]
    p0 = c1_pairs[0]
    p1 = c1_pairs[1]
    p0.product(p1) do |p|
      n = p2 + p
      return n if 4 == try(n)
    end
    raise 'must not happen'
  when 0
    raise 'must not happen' if 4 != c1_pairs.size
    16.times do |i|
      n = c1_pairs.map.with_index{|p, j| p[(0 == i & (1<<j)) ? 0 : 1] }
      return n if 4 == try(n)
    end
    raise 'must not happen'
  else
    raise 'must not happen'
  end

  raise 'must not happen'
end

def detect_sequence(n)
  n.permutation do |n_|
    try(n_)
  end
end

detect_sequence(detect_combination)
