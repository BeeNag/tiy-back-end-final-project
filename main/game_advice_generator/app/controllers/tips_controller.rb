class TipsController < ApplicationController
  def index
  	@game = Game.find(params[:game_id])
  	@tips = @game.tips
  	@platform = @game.platform
  end
end
