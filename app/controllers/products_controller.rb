class ProductsController < ApplicationController
	before_filter :find_product, :only => [:index]

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:notice] = "Success to save product"
			redirect_to products_path
			return
		else
			flash[:error] = "Failed to save product"
		end
		render :new
	end

	def edit
		@product = Product.find_by_id(params[:id])
	end

	def index
		@products = Product.select("name, price, stock, description")
						   
	end

	def destroy
		@product = Product.find_by_id(params[:id])
		if @product.destroy
			flash[:notice] = "Your product has been deleted"
		else
			flash[:error] = "Failed to delete product"
		end
		redirect_to products_path
	end

	def show
		@product = Product.find_by_id(params[:id])
	end

	def update
		@product = Product.find_by_id(params[:id])
		if @product.update_attributes(product_params)
			flash[:notice] = "Success to update product"
			redirect_to products_path
			return
		else
			flash[:error] = "Failed to update product"
		end
		render :edit
	end

	private

	def find_product
		@product = Product.find_by_id(1) rescue nil
	end

	def product_params
		params.require(:product).permit(:name, :price, :stock, :description)
	end

end
