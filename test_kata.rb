test_results = {
John Smith=> 75,
Sally Field=> 85,
Jane Doe=> 93,
Gus Grumpy=> 98,
Mark Marcus=> 68,
Vic Victor=> 83,
Frank Furter=> 89,
John Bello=> 78,
Liz Branch=> 99
}
# aggregate the ranges of the entire student body
# group each range and list the students that fell within range
  # create another hash with ranges

# {
#  ">= 90" => ["Jane Doe", "Liz Branch"], #  etc.
# }

score_buckets = {
  ">= 90" => [],
  ">= 80" => [],
  ">= 70" => [],
  " < 70" => []
}

# report out the ranges

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

`
