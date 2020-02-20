class LikesController < ApplicationController
  before_action :set_item, only: [:create, :destroy]
  before_action :set_like, only: [:create, :destroy]

  def create
    if @like = Like.create(user_id: current_user.id, item_id: params[:item_id])
      flash[:alert] = "いいねしました"
    else
      flash.now[:alert] = "いいねできませんでした"
    end
    @item.reload
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, item_id: params[:item_id])
    if like.destroy
      flash.now[:alert] = "いいね削除しました"
    else
      flash.now[:alert] = 'いいね削除できませんでした。'
    end
    @item.reload
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_like
    @like = Like.find_by(user_id: current_user.id, item_id: params[:item_id])
  end

end
