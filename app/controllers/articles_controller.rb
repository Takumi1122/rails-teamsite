class ArticlesController < ApplicationController
  before_action :login_required, except: [:index, :show]

  def index
    @articles = Article.visible.order(released_at: :desc)
    @articles = @articles.open_to_the_public unless current_member
    @articles = @articles.page(params[:page]).per(5)
  end

  def show
    articles = Article.visible
    articles = articles.open_to_the_public unless current_member
    @article = articles.find(params[:id])
  end
end
