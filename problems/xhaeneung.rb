# nums = %w(zero one two three four five six seven eight nine ten)
# gets.to_i.times do
#   statement, actual = gets.split('=')
#   statement = statement.split.map { |m| nums.index(m) || m }
#   operation = statement.slice!(1).to_sym
#   expected = statement.map(&:to_i).reduce(operation)
#   actual.strip!
#   if nums[expected] && nums[expected].chars.sort == actual.chars.sort
#     puts 'Yes'
#   else
#     puts 'No'
#   end
# end

n=%w(zero one two three four five six seven eight nine ten);gets;$<.map{|x|e,a=x.split?=;e=n[eval e.gsub(/\w+/){|m|n.index m||m}];puts e&&e.chars.sort==a.strip.chars.sort ? 'Yes':'No'}
