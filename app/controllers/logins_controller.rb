class LoginsController < ApplicationController
  def new
    if session[:login] != nil
      redirect_to products_path
    end
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.registered?
      session[:login] = @user.id
      redirect_to products_path
    else
      render :new
    end
  end

  def destroy
    session[:login] = nil
    redirect_to products_path
  end

  private
    def user_params
      params.require(:user).permit(:name,:password)
    end
end
