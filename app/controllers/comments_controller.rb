class CommentsController < ApplicationController
  def new
  end

    def create
        @topic = Topic.find(params[:topic_id])
        @comment = @topic.comments.create(comment_params)
        
        if @comment.save
            redirect_to @topic
        else
            render :new
        end
    end
    
  def show
  end
    
    private
    
    def comment_params
        params.require(:comment).permit(:content, :topic_id, :user_id)
    end
end
