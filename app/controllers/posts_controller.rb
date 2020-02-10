class PostsController < ApplicationController
  def index
    @parents = Category.all.order("id ASC").limit(13)

  end

  def show
    @parents = Category.all.order("id ASC").limit(13)
  end

  def create
  end
end
