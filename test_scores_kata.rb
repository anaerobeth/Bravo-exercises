# read in the details of student scores
test_results = {
  "John Smith" => 75,
  "Sally Field" => 85,
  "Jane Doe" => 93,
  "Gus Grumpy" => 98,
  "Mark Marcus" => 68,
  "Vic Victor" => 83,
  "Frank Furter" => 89,
  "John Bello" => 78,
  "Liz Branch" => 99
}


# aggregate the score ranges of the entire student body

# group each range and list the students that fell within those ranges

# {
#   ">= 90" => ["Jane Doe", "Liz Branch"],
#   ">= 80" => ["Sally Field", "Vic Victor", "Frank Furter"]
# }

score_buckets = {
  ">= 90" => [],
  ">= 80" => [],
  ">= 70" => [],
  "< 70" => []
}

test_results.each do |name, score|
  if score >= 90
    score_buckets[">= 90"] << name
  elsif score >= 80
    score_buckets[">= 80"] << name
  elsif score >= 70
    score_buckets[">= 70"] << name
  else
    score_buckets["< 70"] << name
  end
end

score_buckets.each do |range, names|
  puts "#{range}: #{names.size}"
end

puts "---"

score_buckets.each do |range, names|
  puts "***#{range}***"
  names.each do |name|
    puts name
  end
end

the_range = ">= 90"
score_buckets[the_range]

# report out those ranges