class GamesController < ApplicationController
  
  def index
  	@platform = Platform.find(params[:platform_id])
  	@games = @platform.games
  end
  
end
