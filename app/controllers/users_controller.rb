class UsersController < ApplicationController
  before_action :set_user

  def show
    respond_to do |format|
      format.html { }
      format.json { render json: @user }
    end
  end

  def update
    if @user.update user_params
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :bio, :website, :cv
  end

  def set_user
    @user = User.find params[:id]
  end
end
