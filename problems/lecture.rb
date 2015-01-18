gets.to_i.times do
  puts gets.chop.scan(/../).sort.join
end
