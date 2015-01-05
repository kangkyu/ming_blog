class CommentsController < ApplicationController
  
  def index
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    if @comment.save
      redirect_to article_url(@article)
    else
      render :back
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :title)
  end
end
