require "pry"

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(player_name)
  player_stats(player_name)[:points]
end

def shoe_size(player_name)
  player_stats(player_name)[:shoe]
end

def team_colors(team)
  game_hash.each do |home_o_away, team_info|
    if team == team_info[:team_name]
      return team_info[:colors] 
    end
  end
end

def team_names
 [game_hash[:home][:team_name],game_hash[:away][:team_name]]
end

def player_numbers(team)
  game_hash.each do |home_o_away, team_info|
    if team_info[:team_name] == team
     return helper_numbers(team_info[:players])
    end
  end
end

def helper_numbers(player_index) #gets player number from each player in one team
  numbers = [] 

  (0...player_index.size).each do |player_hash|
    numbers << player_index[player_hash][:number]
  end
  numbers
end



def player_stats(player_name)
  game_hash.each do |home_o_away, team_info|
    team_info[:players].each do |player_hash|
      if player_hash[:player_name] == player_name
       return player_hash
      end
    end
  end
end

def big_shoe_rebounds

  #finding player with biggest shoe size
  player_size = {}
  game_hash.each do |home_o_away, team_info|
    team_info[:players].each do |player|
      player_size[player[:player_name]] = player[:shoe] #put all players as key, with value as size into one hash
    end
  end
  biggest_foot_player = player_size.max_by {|player_name, player_shoe_size| player_shoe_size}[0] #finding max value, extracting name
   
  #looking up player with the biggest foot rebound total
  player_stats(biggest_foot_player)[:rebounds]


end

def most_points_scored
end

def winning_team
end

def player_with_longest_name
end

def long_name_steals_a_ton?
end
