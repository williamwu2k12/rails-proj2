class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        if (@comment.save)
            redirect_to cat_path(@comment.catid)
        else
            flash[:error] = @comment.errors.full_messages.to_sentence
        end
    end

    def comment_params
        params.require(:comment).permit(:content, :catid, :userid)
    end

    def update
        @comment = Comment.find(params["id"])
        @temp = 0
        if (params["instruction"] == "upvote")
            Likes.all.each do |like|
                if (like.userid == current_user.id)
                    if (like.commentid == @comment.id)
                        @temp = 1
                    end
                end
            end
            if (@temp != 1)
                if (@comment.likes == nil)
                    @comment.update_attribute(:likes, 1)
                else
        	        @comment.update_attribute(:likes, @comment.likes + 1)
                end
                @like = Likes.new
                @like.userid = @current_user.id
                @like.commentid = @comment.id
                @like.save
            end
        else
            Likes.all.each do |like|
                if (like.userid == current_user.id)
                    if (like.commentid == @comment.id)
                        @temp = 1
                    end
                end
            end
            if (@temp != 1)
                if (@comment.likes == nil)
                    @comment.update_attribute(:likes, -1)            
                else
                    @comment.update_attribute(:likes, @comment.likes - 1)
                end
                @like = Likes.new
                @like.userid = @current_user.id
                @like.commentid = @comment.id
                @like.save
            end
        end
        redirect_to :back
    end

    def destroy
        Comment.delete(params["id"])
        redirect_to :back
    end
end
