class UsersController < ApplicationController

	before_action :set_user, only: [ :edit, :update ]

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def edit
	end

	def update
		if @user.update_attributes(user_params)
			redirect_to root_path, success: 'Пользователь успешно обновлен'
		else
			flash.now[:danger] = 'Пользователь не обновлен'
			render :edit
		end
	end

	private

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:presence)
	end

end
