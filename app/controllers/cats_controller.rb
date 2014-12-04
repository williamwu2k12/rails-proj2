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
        @cat.user_id = current_user.id
        @cat.likes = 0
        if (@cat.save)
            redirect_to cats_path
        else
            flash[:error] = @cat.errors.full_messages.to_sentence
            render 'new'
        end
    end

    def showsorted
        @cat = Cat.find(params[:id])
        @comment = Comment.new
        @comments = Comment.all
    end

    def top
        @cats = Cat.all
        @order = Hash.new
        @cats.each do |cat|
            @order[cat.likes] = cat.id
        end
        @order = @order.sort
        @order = @order.reverse
    end

    def destroy
        @cat = Cat.destroy(params[:id])
        redirect_to :back
    end

    def update
        @cat = Cat.find(params[:id]);
        if (params["instruction"] == "upvote")
            Likes.all.each do |like|
                if (like.userid == current_user.id)
                    if (like.commentid == @cat.id)
                        @temp = 1
                    end
                end
            end
            if (@temp != 1)
                if (@cat.likes == nil)
                    @cat.update_attribute(:likes, 1)            
                else
                    @cat.update_attribute(:likes, @cat.likes + 1)
                end
                @like = Likes.new
                @like.userid = current_user.id
                @like.commentid = @cat.id
                @like.save
            end
            if (@temp == 1)
                flash[:notice] = "You've already voted on this cat!"
            end
        else
            Likes.all.each do |like|
                if (like.userid == current_user.id)
                    if (like.commentid == @cat.id)
                        @temp = 1
                    end
                end
            end
            if (@temp != 1)
                if (@cat.likes == nil)
                    @cat.update_attribute(:likes, -1)            
                else
                    @cat.update_attribute(:likes, @cat.likes - 1)
                end
                @like = Likes.new
                @like.userid = current_user.id
                @like.commentid = @cat.id
                @like.save
            end
            if (@temp == 1)
                flash[:notice] = "You've already voted on this cat!"
            end
        end
        redirect_to :back
    end

    def cat_params
        params.require(:cat).permit(:title, :tag, :image)
    end

end