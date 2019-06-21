class MembersController < ApplicationController
  before_action :login_required

  def index
    @members = Member.order("number")
      .page(params[:page]).per(15)
  end

  def show
    @member = Member.find(params[:id])
  end

  def search
    @members = Member.search(params[:q])
      .page(params[:page]).per(15)
    render "index"
  end
  
end
