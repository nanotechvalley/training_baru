class CategoriesController < ApplicationController
	def new
	end

	def create
	end

	def edit
	end

	def index
		@categories =Category.all
	end

	def destroy
	end

end
