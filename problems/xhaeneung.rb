nums = %w(zero one two three four five six seven eight nine ten)
gets.to_i.times do
  statement, actual = gets.split('=')
  statement = statement.split.map { |m| nums.index(m) || m }
  operation = statement.slice!(1).to_sym
  expected = statement.map(&:to_i).reduce(operation)
  actual.strip!
  if nums[expected] && nums[expected].chars.sort == actual.chars.sort
    puts 'Yes'
  else
    puts 'No'
  end
end
