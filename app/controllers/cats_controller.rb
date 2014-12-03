class CatsController < ApplicationController
    def index
        @cats = Cat.all
    end
    def show
        @cat = Cat.find(params[:id])
    end
    def new
        @cat = Cat.new
    end
    def create
        @cat = Cat.new(cat_params)
        @cat.tag = params["cat"]["tag"]
        @cat.title = params["cat"]["title"]
        1/0
        if (@cat.save)
            redirect_to cats_path
        else
            flash[:error] = @cat.errors.full_messages.to_sentence
            render 'new'
        end
    end

    def cat_params
        params.require(:cat).permit(:images)
    end

end