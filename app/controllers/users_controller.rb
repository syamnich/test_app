class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user, only: :destroy

  def new; end

  def show; end

  def edit; end

  def index; end

  def destroy
    user.destroy
    flash[:success] = 'User deleted'
    redirect_to users_url
  end

  def create
    if new_user.update_attributes(user_params)
      sign_in new_user
      flash[:success] = 'User successfully created'
      redirect_to root_url
    else
      flash.now[:danger] = new_user.errors.full_messages.to_sentence
      render :new
    end
  end

  def update
    if user.update_attributes(user_params)
      flash[:success] = 'Profile updated'
      redirect_to user
    else
      flash.now[:danger] = user.errors.full_messages.to_sentence
      render 'edit'
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

  helper_method :users
  def users
    @users ||= User.all.order(:id)
  end

  def logged_in_user
    return if user_signed_in?
    store_location
    flash[:danger] = 'Please log in'
    redirect_to login_url
  end

  def correct_user
    redirect_to root_url unless current_user?(user)
  end

  def admin_user
    redirect_to root_url unless current_user.admin?
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
