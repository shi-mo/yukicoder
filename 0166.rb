h, w, n, k = gets.split.map(&:to_i)

mod = ((h % n) * (w % n)) % n
puts (mod == (k % n)) ? 'YES' : 'NO'
