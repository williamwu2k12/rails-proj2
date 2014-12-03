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
        if (params["instruction"] == "upvote")
    	   @comment.update_attribute(:likes, @comment.likes + 1)
        else
            @comment.update_attribute(:likes, @comment.likes - 1)
        end
        redirect_to :back
    end
end
