class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless game[0][1].length == 1 &&
     game[1][1].length == 1
  raise NoSuchStrategyError unless game[0][1] =~ /[PSR]/i &&
     game[1][1] =~ /[PSR]/i
  game[0][1].upcase!
  game[1][1].upcase!
  result = ""
  case
     when game[0][1] == game[1][1]
        return game[0]
     when (game[0][1] == "R" && game[1][1] == "S") ||
        (game[0][1] == "S" && game[1][1] == "P") ||
        (game[0][1] == "P" && game[1][1] == "R")
        return game[0]
     when (game[0][1] == "R" && game[1][1] == "P") ||
        (game[0][1] == "S" && game[1][1] == "R") ||
        (game[0][1] == "P" && game[1][1] == "S")
        return game[1]
     else
        puts "Whoops, debug time!"
     end
     result
end

def rps_tournament_winner(tournament)
  playoff = Array.new()
  tournament.each { |pair| 
     first_winner = rps_game_winner(pair[0])
        print first_winner.to_s
     second_winner = rps_game_winner(pair[1])
        print second_winner.to_s
     playoff << first_winner
     playoff << second_winner
     match_winner = rps_game_winner(playoff)
     return match_winner
  }
end

rps_tournament_winner([
    [
       [ ["Armando", "P"], ["Dave", "S"] ],
       [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
       [ ["Allen", "S"], ["Omer", "P"] ],
       [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]
)

puts "\nJust after 4-pari\n\n"

rps_tournament_winner([
       [ ["Allen", "S"], ["Omer", "P"] ],
       [ ["David E.", "R"], ["Richard X.", "P"] ]
]
)

puts "\nJust after 2-pair\n\n"

rps_tournament_winner(
       [ ["David E.", "R"], ["Richard X.", "P"] ])

