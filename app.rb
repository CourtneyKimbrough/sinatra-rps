require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end

get("/rock") do
  choices = ["rock", "paper", "scissors"]
  player_choice = "rock"
  @computer_choice = choices.sample
  
  @outcome = ""

  if @computer_choice == "rock"
    @outcome = "tied"
  elsif @computer_choice == "paper"
    @outcome = "lost"
  else
    @outcome = "won"  
  end

  erb(:rock)
end

get("/paper") do
  choices = ["rock", "paper", "scissors"]
  player_choice = "paper"
  @computer_choice = choices.sample
  
  @outcome = ""

  if @computer_choice == "rock"
    @outcome = "won"
  elsif @computer_choice == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"  
  end

  erb(:paper)
end

get("/scissors") do
  choices = ["rock", "paper", "scissors"]
  player_choice = "scissors"
  @computer_choice = choices.sample
  
  @outcome = ""

  if @computer_choice == "rock"
    @outcome = "lost"
  elsif @computer_choice == "paper"
    @outcome = "won"
  else
    @outcome = "tied"  
  end

  erb(:scissors)
end
