class UsersController < ApplicationController
  # before_action :set_user ,only: [:update]
  before_action :user_params ,only: [:update]

  def edit

  end

  def update
    if current_user.update(user_params)
    # if @user.update(user_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  # def set_user
  #   @user = User.find(params[:id])
  # end

  def user_params
    params.require(:user).permit(:name , :email )
  end

end
