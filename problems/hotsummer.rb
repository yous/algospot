gets.to_i.times do
  target = gets.to_i
  puts gets.split.map(&:to_i).reduce(:+) <= target ? 'YES' : 'NO'
end
