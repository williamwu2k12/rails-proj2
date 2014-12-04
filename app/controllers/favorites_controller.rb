class FavoritesController < ApplicationController
	def update
		@cat = Cat.find(params["id"])
		Favorites.all.each do |favorite|
                if (favorite.userid == current_user.id)
                    if (favorite.catid == @cat.id)
                        @temp = 1
                    end
                end
            end
        if (@temp != 1)
			if (params["instruction"] == "Favorite")
				@favorite = Favorites.new
	        	@favorite.userid = current_user.id
	       		@favorite.catid = @cat.id
	        	@favorite.save
	        end
	    end
	    redirect_to :back
	end
	def destroy
		Favorites.delete(params[:id])
		redirect_to :back
	end
end
