convert_map = { kg: [2.2046, 'lb'],
                lb: [0.4536, 'kg'],
                l: [0.2642, 'g'],
                g: [3.7854, 'l'] }
gets.to_i.times do |i|
  value, unit = gets.split
  convert = convert_map[unit.to_sym]
  puts format('%d %.4f %s', i + 1, value.to_f * convert[0], convert[1])
end
