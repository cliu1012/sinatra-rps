require "sinatra"
require "sinatra/reloader"

require "binding_of_caller"
require "better_errors"


# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  erb(:home)
end


get("/rock") do
  @player_choice = "Rock"
  @computer_choice = ["Rock", "Paper", "Scissors"].sample
  @result = ""

  if @player_choice == @computer_choice
    @result = "tied"
  elsif (@player_choice == "Rock" && @computer_choice == "Scissors") ||
        (@player_choice == "Scissors" && @computer_choice == "Paper") ||
        (@player_choice == "Paper" && @computer_choice == "Rock")
    @result = "win"
  else
    @result = "lost"
  end

  erb(:rock)
end


get("/paper") do
  @player_choice = "Paper"
  @computer_choice = ["Rock", "Paper", "Scissors"].sample
  @result = ""

  if @player_choice == @computer_choice
    @result = "tied"
  elsif (@player_choice == "Rock" && @computer_choice == "Scissors") ||
        (@player_choice == "Scissors" && @computer_choice == "Paper") ||
        (@player_choice == "Paper" && @computer_choice == "Rock")
    @result = "win"
  else
    @result = "lost"
  end

  erb(:paper)
end


get("/scissors") do
  @player_choice = "Scissors"
  @computer_choice = ["Rock", "Paper", "Scissors"].sample
  @result = ""

  if @player_choice == @computer_choice
    @result = "tied"
  elsif (@player_choice == "Rock" && @computer_choice == "Scissors") ||
        (@player_choice == "Scissors" && @computer_choice == "Paper") ||
        (@player_choice == "Paper" && @computer_choice == "Rock")
    @result = "win"
  else
    @result = "lost"
  end

  erb(:scissors)
end
