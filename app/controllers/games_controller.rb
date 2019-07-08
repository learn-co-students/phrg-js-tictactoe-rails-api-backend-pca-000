class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    Game.create(game_params)
    render json: @game, status: 201 #not an exact 200, details in to_json lab
  end

  def show
    @game = Game.find(params[:id]) #find the game
    render json: @game #render game in Json
  end

  def update
    @game = Game.find(params[:id]) #find the game
    @game.update(game_params)
    render json: @game

  end

  def index
    @games = Game.all
    render json: @games
  end

  private

  def game_params
    params.permit(state:[])
  end
end
