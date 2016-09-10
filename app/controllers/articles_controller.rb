class ArticlesController < ApplicationController
	def new
	end

	def create
		#render plain: params[:article].inspect
		@article = Article.new(params.require(:article).permit(:title, :text))
		@article.save
		redirect_to @article
	end
	private
	def acrticle_params
		params.require(:article).permit(:title, :text)
	end
end
