class FavoritesController < ApplicationController
	def update
		@cat = Cat.find(params["id"])
		if (params["instruction"] == "Favorite")
			@favorite = Favorites.new
        	@favorite.userid = current_user.id
       		@favorite.catid = @cat.id
        	@favorite.save
        	redirect_to :back
        end
	end
end
