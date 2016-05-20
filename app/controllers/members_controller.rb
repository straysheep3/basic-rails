class MembersController < ApplicationController
  # 会員一覧
  def index
    @members = Member.order("number")
  end

  # 検索
  def search
    @members = Member.search(params[:q])
    render "index"
  end

  # 会員情報の詳細
  def show
    @member = Member.find(params[:id])
  end

  def new
    #code
  end

  def edit
    #code
  end

  def create
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end
end
