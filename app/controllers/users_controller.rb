class UsersController < ApplicationController
  def new
  end

  def show
  end

  def create
    if new_user.update_attributes(user_params)
      flash[:success] = 'User successfully created'
      redirect_to root_url
    else
      flash.now[:danger] = new_user.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  helper_method :new_user
  def new_user
    @new_user ||= User.new
  end

  helper_method :user
  def user
    @user ||= User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
