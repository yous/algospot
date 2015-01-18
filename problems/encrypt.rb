gets.to_i.times do
  chunks = ['', '']
  gets.chop.each_char.with_index do |ch, idx|
    chunks[idx % 2] << ch
  end
  puts chunks.join
end
