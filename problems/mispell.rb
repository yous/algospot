gets.to_i.times do |i|
  index, word = gets.split
  word[index.to_i - 1] = ''
  puts "#{i + 1} #{word}"
end
