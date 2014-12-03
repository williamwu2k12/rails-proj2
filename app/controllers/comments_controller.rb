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

    def upvote
    	@comment = Comment.find(params)
    	@comment.update_attribute(:likes, @comment.likes + 1)
    end

    def update
    	redirect_to
    end
    def downvote
		@comment = Comment.find(params)
    	@comment.update_attribute(:likes, @comment.likes - 1)
    end
end
