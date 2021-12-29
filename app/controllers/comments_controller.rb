class CommentsController < ApplicationController
  before_action :set_article
  before_action :require_login

  def create
    @comment = @article.comments.build(comment_params)
    if @comment.save
      redirect_to @article
    else
      render 'articles/show', status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :title)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end
end
