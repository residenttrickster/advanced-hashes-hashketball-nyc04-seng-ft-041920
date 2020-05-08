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
def num_points_scored(player)
  game_hash.each do |location, value|
    value[:players].each do |key|
    if player == key[:player_name]
      return key[:points]
    end
   end
  end
end

def shoe_size(player)
  game_hash.each do |location, value|
    value[:players].each do |key|
    if player == key[:player_name]
      return key[:shoe]
    end
   end
  end
end

def team_colors(name)
  game_hash.each do |location, value|
    if name == value[:team_name]
    return value[:colors]
    end
  end
end

def team_names
  names_array = []
  game_hash.each do |location, value|
    names_array << value[:team_name]
  end
  return names_array
end

def player_numbers(team_name)
  jersey_number = []
  game_hash.each do |location, value|
      if team_name == value[:team_name]
        value[:players].each do |key|
        jersey_number << key[:number]
      end
    end
  end
  return jersey_number
end

#Build a method, player_stats, that takes in an argument of a player's name and returns a hash of that player's stats.

def player_stats(name)
  stats = {}
  game_hash.each do |location, value|
    value[:players].each do |key|
    if name == key[:player_name]
      stats = key
    end
  end
end
  return stats
end

#Then, return that player's number of rebounds. Remember to think about return values here.
def big_shoe_rebounds
  shoe_size = 0
  rebounds = 0
  game_hash.each do |location, value|
    value[:players].each do |key|
      if shoe_size < key[:shoe]
        shoe_size = key[:shoe]
        rebounds = key[:rebounds]
      end
    end
  end
  return rebounds
end


# Which player has the most points? Call the method most_points_scored.

def most_points_scored
  points = 0
  name = ""
  game_hash.each do |location, value|
    value[:players].each do |key|
      if points < key[:points]
        points = key[:points]
        name = key[:player_name]
    end
  end
  return name
end

#Which team has the most points? Call the method winning_team.

def winning_team
  home_team = 0
  away_team = 0
  game_hash[:home][:players].each do |value|
    home_team += value[:points]
  end
  game_hash[:away][:players].each do |value|
    away_team += value[:points]
end
if home_team > away_team
  return game_hash[:home][:players]
elsif home_team < away_team
  return game_hash[:away][:players]
  end
end


#Which player has the longest name? Call the method player_with_longest_name.

def player_with_longest_name
  name = ""
  game_hash.each do |location, value|
    value[:player].each do |key|
      if name < key[:player_name].length
        name = key[:player_name]
        end
      end
    end
  end
  return name
end

#Write a method that returns true if the player with the longest name had the most steals. Call the method long_name_steals_a_ton?.

def long_name_steals_a_ton?
  name = ""
  most_steals = 0
  game_hash.each do |location, value|
    value[:player].each do |key|
      if name < key[:player_name].length && most_steals < key [:steals]
        name = key[:player_name]
        most_steals = key[:steals]
      end
      if name == most_steals 
        return true
      end
    end
  end
end
