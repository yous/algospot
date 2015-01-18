gets.to_i.times.each do
  puts ("%032d" % gets.to_i.to_s(2)).scan(/.{8}/).reverse.join.to_i(2)
end
