class TopsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC").page(params[:page]).per(15)
  end

  def show
  end
end
