class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
  end

  def create
    # render plain: params[:article]
    @article = Article.new(params.require(:article).permit(:title, :description))
    # @article = Article.new(params[:article])
    # render plain: @article.inspect
    @article.save

    redirect_to article_path(@article)
    # or
    # redirect_to @article
  end
end
