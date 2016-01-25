class GamesController < ApplicationController
  
  def index
  	@platform = Platform.find(params[:platform_id])
  	@games = @platform.games
  	@tips = Tip.count
  end
  
end
