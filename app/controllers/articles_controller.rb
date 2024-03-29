class ArticlesController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @articles = Article.order_by_updated_at
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
      flash[:notice] = "article added"
    else
      flash.now[:error] = "what are you doing? you need a title."
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
      flash[:notice] = "article updated"
    else
      flash[:error] = "what are you doing? you need a title."
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "article deleted"
    redirect_to articles_url
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
