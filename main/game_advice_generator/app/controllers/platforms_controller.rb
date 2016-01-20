class PlatformsController < ApplicationController

	def index
		@platforms = {}
		@platforms[:PS4] = Platform.find_by title: "PS4"
		@platforms[:XBOX_ONE] = Platform.find_by title: "XBOX ONE"
		@platforms[:PC] = Platform.find_by title: "PC"
	end

end
