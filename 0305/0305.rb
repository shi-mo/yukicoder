def query(n)
  puts n.join('')
  STDOUT.flush
end

def reply
  x, y = gets.split
  x = x.to_i
  exit 0 if 'unlocked' == y
  x
end

def detect_counts
  counts = Array.new(10)
  0.upto(9) do |i|
    query [i] * 10
    counts[i] = [i, reply]
  end
  counts
end

def detect_answer(counts)
  min_i, min_c = counts.sort_by{|i, c| c }.first
  numbers = counts.select{|i, c| 0 < c } - [[min_i, min_c]]
  answer = Array.new(10)

  numbers.each do |i, c|
    10.times do |j|
      q = Array.new(10){ min_i }
      q[j] = i

      query q
      n = reply
      next if n <= min_c

      answer[j] = i
    end
  end
  answer.map.with_index.select{|i, idx| i.nil? }.each do |i, idx|
    answer[idx] = min_i
  end
  query answer
end

detect_answer(detect_counts)
