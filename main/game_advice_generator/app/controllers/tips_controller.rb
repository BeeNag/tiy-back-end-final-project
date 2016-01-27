class TipsController < ApplicationController
  def index
  	@game = Game.find(params[:game_id])
  	@tips = @game.tips
  	@platform = @game.platform
  end

  def new
  	@game = Game.find(params[:game_id])
  	@tip = Tip.new
  end

  def create
  	@game = Game.find(params[:game_id])
  	@tip = @game.tips.new(tip_params)

  	if(@tip.save)
  		redirect_to game_tips_path(@game, @tip)
  	else
  		render :new
  	end
  end

  private

  def tip_params
  	params.require(:tip).permit(:body)
  end

end
