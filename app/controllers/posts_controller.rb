class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each do |spam|
      if spam.id % 5 == 0
        spam.title = "SPAM"
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
