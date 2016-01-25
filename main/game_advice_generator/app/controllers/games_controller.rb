class GamesController < ApplicationController
  
  def index
  	@platform = Platform.find(params[:platform_id])
  	@games = @platform.games
  	@tips = Tip.count
  end

  def new
  	@platform = Platform.find(params[:platform_id])
  	@game = Game.new
  end

  def create
  	@platform = Platform.find(params[:platform_id])
  	@game = @platform.games.new(game_params)

  	if(@game.save)
  		redirect_to platform_games_path(@platform, @game)
  	else
  		render :new
  	end
  end
  
  private

  def game_params
  	params.require(:game).permit(:title)
  end

end
