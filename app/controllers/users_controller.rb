class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Congratulations! Your details have been saved"
			redirect_to users_path
			return
		else
			flash[:error] = "Oops! Please register again"
		end
		render :new	
	end

	def edit
		@user = User.find_by_id(params[:id])
	end

	def index
		@users = User.senang
	end

	def destroy
		@user = User.find_by_id(params[:id])
		if @user.destroy
			flash[:notice] = "The user has been deleted"
		else
			flash[:error] = "Failed to delete user"
		end
		redirect_to users_path
	end

	def show
		@user = User.find_by_id(params[:id])
	end

	def update
		@user = User.find_by_id(params[:id])
		if @user.update_attributes(user_params)
			flash[:notice] = "Success to update user details"
			redirect_to users_path
			return
		else
			flash[:error] = "Failed to update user details"
		end
		render :edit
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :date_of_birth, :age, :address, :country_id)
	end
end
