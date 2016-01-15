class ArticlesController < ApplicationController
  
  def new
    @article = Article.new
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article was created successfully."
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end
  
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "Article was updated successfully."
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  private
  
    def article_params
      params.require(:article).permit(:title, :country, :divesite, :description)
    end
  
end