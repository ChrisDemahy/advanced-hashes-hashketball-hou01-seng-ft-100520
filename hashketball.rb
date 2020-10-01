# Write your code below game_hash
require 'pry'
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

# Finds and returns the Player's status
# name - name of the player as a string
# returns a hash of the player
def player_status(name)
  # Enumerate across the home players array to find the correct name
  player = game_hash[:home][:players].find { |item|
    # Store the player hash if it matches
    item[:player_name] == name
   }
   # Only enumerate a second time if the first enumeration didn't find the name
  if player == nil
    # Store the player hash if the name matches
    player = game_hash[:away][:players].find { |item| item[:player_name] == name }
  end
  # return the player hash
  player
end

# Find the number of points scored by the given player
# name - string of player name
# returns an integer of the points
def num_points_scored(name)
  player = player_status(name)
  player[:points]
end

# Finds the shoe size of the given player
# name - string of the player name
# returns an integer of the size
def shoe_size(name)
  player = player_status(name)
  player[:shoe]
end

# Find the colors of the team given
# team - string of the team name
# returns an array of the colors
def team_colors(team)
  game_hash[:away][:team_name] == team ? game_hash[:away][:colors] : game_hash[:home][:colors]
end

# Find the names of the teams
# returns an array of strings of the names of the teams
def team_names
  game_hash.map { |k, v| v[:team_name] }
end
