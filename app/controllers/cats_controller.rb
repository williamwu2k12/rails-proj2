class CatsController < ApplicationController
    def index
        @cats = Cat.all
    end
    def show
        @cat = Cat.find(params[:id])
        @comment = Comment.new
        @comments = Comment.all
    end
    
    def new
        @cat = Cat.new
    end
    def create
        @cat = Cat.new(cat_params)
        if (@cat.save)
            redirect_to cats_path
        else
            flash[:error] = @cat.errors.full_messages.to_sentence
            render 'new'
        end
    end

    def cat_params
        params.require(:cat).permit(:title, :tag, :image)
    end

end