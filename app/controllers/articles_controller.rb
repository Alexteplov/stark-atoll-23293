class ArticlesController < ApplicationController
#init index 
  def index
    @articles = Article.all
  end
#init show
  def show
    @article = Article.find(params[:id])
  end
#init new
  def new; end
#intit create
  def create
    #render plain: params[:article].inspect
    @article = Article.new(acrticle_params)
    @article.save
    redirect_to @article
  end
# section private
  private
  def acrticle_params
    params.require(:article).permit(:title, :text)
  end
end