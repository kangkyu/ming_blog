class CommentsController < ApplicationController
  
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    if @comment.save
      respond_to do |format|
        format.html {redirect_to @article}
        format.js # render comments/create.js.erb
      end
    else
      render 'articles/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :title)
  end
end
