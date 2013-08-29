games = [
    {'team_1_name' => 'Sick Kicks',
     'team_1_score' => 2,
     'team_2_name' => 'Good Will Bunting',
     'team_2_score' => 3,
    },
    {'team_1_name' => 'Sick Kicks',
     'team_1_score' => 5,
     'team_2_name' => 'Angels in the Outfield',
     'team_2_score' => 3,
    }
  ]


  puts games[0] # Sidekicks vs Good
  puts games[1] # Sidekicks vs Angels

  puts games[1]['team_1_name']  # Sick
  puts games[1]['team_1_score'] # 3

  game_one = games[0]
  puts game_one['team_1_name'] # Sick

  game_two = games[1]
  puts game_one['team_2_score'] # 3