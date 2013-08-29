require 'pry'

names_and_scores = {}
  games = []
  team_1_name = ''
  team_2_name = ''
  team_1_score= ''
  team_2_score = ''

  game_number = 0
    puts "What was team 1's name?"
    print "> "
    team_1_name = gets.chomp

    puts "What was team 1's score?"
    print "> "
    team_1_score = gets.chomp.to_i

    puts "What was team 2's name?"
    print "> "
    team_2_name = gets.chomp

    puts "What was team 2's score?"
    print "> "
    team_2_score = gets.chomp.to_i


names_and_scores[game_number] = {'team_1_name' => team_1_name, 'team_1_score' => team_1_score, 'team_2_name' => team_2_name, 'team_2_score' => team_2_score,  }


games << names_and_scores

game_number += 1

names_and_scores = {}

  team_1_name = ''
  team_2_name = ''
  team_1_score= ''
  team_2_score = ''

    puts "What was team 1's name?"
    print "> "
    team_1_name = gets.chomp

    puts "What was team 1's score?"
    print "> "
    team_1_score = gets.chomp.to_i

    puts "What was team 2's name?"
    print "> "
    team_2_name = gets.chomp

    puts "What was team 2's score?"
    print "> "
    team_2_score = gets.chomp.to_i
names_and_scores[game_number]= {'team_1_name' => team_1_name, 'team_1_score' => team_1_score, 'team_2_name' => team_2_name, 'team_2_score' => team_2_score,  }


games << names_and_scores

p games

