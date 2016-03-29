require 'benchmark'

n = 100000

def prime_numbers1(n)
  p = []
  2.upto(n) do |i|
    is_prime = true
    p.each do |p_|
      if 0 == i % p_
        is_prime = false
        break
      end
    end
    p << i if is_prime
  end
  p
end

def prime_numbers2(n)
  p = []
  not_prime = []

  2.upto(n) do |i|
    next if not_prime[i]

    p << i
    (i*2).step(n, i) do |j|
      not_prime[j] = true
    end
  end
  p
end

Benchmark.bm(10) do |r|
  r.report 'divisions' do
    prime_numbers1(n)
  end

  r.report 'tables' do
    prime_numbers2(n)
  end
end
