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
  counts = []
  0.upto(9) do |i|
    query [i] * 10
    c = reply
    counts << [i, c] if 0 < c
  end
  counts
end

def detect_answer(counts)
  numbers = counts.sort_by{|i, c| c }.reverse
  min_i, min_c = numbers.pop

  answer = Array.new(10)
  numbers.each do |i, c|
    break unless answer.include?(nil)
    10.times do |j|
      next if answer[j]

      q = Array.new(10, min_i)
      q[j] = i

      query q
      n = reply
      next if n == min_c

      answer[j] = (n < min_c) ? min_i : i
    end
  end
  query answer
end

detect_answer(detect_counts)
