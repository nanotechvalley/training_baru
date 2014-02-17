class ArticlesController < ApplicationController

	before_filter :authenticate_user!

	layout 'articles'
	
	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			flash[:notice] = "Your post has been successfully saved"
			redirect_to articles_path
			return
		else
			flash[:error] = "Failed to save the post"
		end
		render :new
	end

	def edit
		@article = Article.find_by_id(params[:id])
	end

	def index
		@articles :Article.order => "created_at DESC", :limit(5)

		@articles  = Article.select("title, description", "id")
							#.where("title LIKE '%buah%' or title lIKE 'rumah%' or title LIKE '%mobil'")
						

	end

	def destroy
		@article = Article.find_by_id(params[:id])
		if @article.destroy
			flash[:notice] = "Your article has been deleted"
		else
			flash[:error] = "Failed to delete article"
		end
		redirect_to articles_path
	end

	def show
		@article = Article.find_by_id(params[:id])
		@comment = @article.comments.new 
		@comments = @article.comments 
	end

	def update
		@article = Article.find_by_id(params[:id])
		if @article.update_attributes(article_params)
			flash[:notice] = "Success to update article"
			redirect_to articles_path
			return
		else
			flash[:error] = "Failed to update article"
		end
		render :edit
	end

	private
	
	def article_params
		params.require(:article).permit(:title, :description, :rating, :user_id, :article_picture, :headline)
	end

 
end
