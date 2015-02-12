gets.to_i.times do
  puts gets.chomp.gsub(/%(\h{2})/) { Regexp.last_match[1].hex.chr }
end
