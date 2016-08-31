s1, t = gets.split

a = ["XII","I","II","III","IIII","V","VI","VII","VIII","IX","X","XI"]

s = a.index(s1)
t = t.to_i

d = (s + t) % 12
puts a[d]
