class PostsController < ApplicationController

  def index  # indexアクションを定義した
    @posts = Post.all # 全てのレコードを@postに代入
    #@post = Post.find(1)  # 1番目のレコードを@postに代入
    #@post = "これはコントローラーで定義したインスタンス変数を確認するための文字列です"
  end

  def new # newのアクション定義
  end

  def create
    Post.create(content: params[:content])
  end
end
