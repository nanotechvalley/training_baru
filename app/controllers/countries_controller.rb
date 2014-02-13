class CountriesController < ApplicationController
	def new
		@country = Country.new
	end

	def create
		@country = Country.new(country_params)
		if @country.save
			flash[:notice] = "New country is added"
			redirect_to countries_path
			return
		else
			flash[:error] = Thats bad! Please add the country again
		end
		render :new	
	end

	def edit
		@country = Country.find_by_id(params[:id])
	end

	def index
		@countries = Country.all
	end

	def destroy
		@country = Country.find_by_id(params[:id])
		if @country.destroy
			flash[:notice] = "Your country has been deleted"
		else
			flash[:error] = "Failed to delete country"
		end
		redirect_to countries_path
	end

	def show
		@country = Country.find_by_id(params[:id])
	end

	def update 
		@country = Country.find_by_id(params[:id])
		if @country.update_attributes(country_params)
			flash[:notice] = "Success to update country"
			redirect_to countries_path
			return
		else
			flash[:error] = "Failed to update country"
		end
		render :edit
	end

	private
	
	def country_params
		params.require(:country).permit(:code, :name)
	end

end
