class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @post = @user.posts.order(id: "DESC").page(params[:page]).per(6)
    @like = @user.likes.order(id: "DESC").page(params[:page]).per(6)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if current_user == @user
      if @user.update(user_params)
        flash[:notice] = 'プロフィール画像を変更しました'
      else
        flash.now[:danger] = 'プロフィール画像の変更に失敗しました'
      end
      @post = @user.posts.order(id: "DESC").page(params[:page]).per(6)
      render :show
    else
      redirect_to user_path
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @posts = Post.find_by(user_id: params[:id])
    flash[:notice] = "ユーザーを削除しました"

    if @posts.nil?
      @user.destroy
      redirect_to root_path
    else
      @posts.destroy
      @user.destroy
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:image)
  end
end
