gets.to_i.times do
  points = 3.times.map { gets.split.map(&:to_i) }
  x, y = points.transpose
  puts "#{x.min_by { |v| x.count(v) }} #{y.min_by { |v| y.count(v) }}"
end
