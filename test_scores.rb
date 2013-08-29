require 'CSV'

total_above_90 = 0
total_above_80 = 0
total_above_70 = 0
total_less_70= 0

above_90 = []
above_80 = []
above_70 = []
less_70 = []


# test_scores.csv is found in
# https://gist.github.com/anaerobeth/ec82e261f98fc8da4105
CSV.foreach('test_scores.csv', headers: true) do |row|

  score = row[1].to_f

  if score >= 90
    above_90 << row[0]
    total_above_90 += 1

  elsif score >= 80
    above_80 << row[0]
    total_above_80 += 1

  elsif score >= 70
    above_70 << row[0]
    total_above_70 += 1

  else
    less_70 << row[0]
    total_less_70 += 1
  end

end
puts ">= 90: #{total_above_90}"
puts ">= 80: #{total_above_80}"
puts ">= 70: #{total_above_70}"
puts " < 70: #{total_less_70}"
puts ''

puts "=== >= 90 ==="
puts above_90
puts ''
puts "=== >= 80 ==="
puts above_80
puts ''
puts "=== >= 70 ==="
puts above_70
puts ''
puts "=== < 70 ==="
puts less_70