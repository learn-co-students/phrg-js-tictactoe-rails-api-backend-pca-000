class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.new
    @game.state =  params[:state]
    @game.save
    render json: @game.to_json
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    game = Game.find(params[:id])
    game.update(state:params[:state])
    render json: game
  end

private
  def game_params
    params.require(:game).permit(:id, :state)
  end

end
