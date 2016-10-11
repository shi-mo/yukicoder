s = gets.chomp
puts ('1' + s.gsub(/L/, '0').gsub(/R/, '1')).to_i(2)
