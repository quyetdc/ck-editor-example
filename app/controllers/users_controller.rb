class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		User.create(params.require(:user).permit(:name, :email))
		redirect_to users_path
	end

	def index
	end
	
end
