class TwittersController < ApplicationController

  before_action :twitter_id, only: [:show, :edit, :update, :destroy]

  def index
    @twitters = Twitter.all
  end

  def new
    @twitter = Twitter.new
  end

  def confirm
  end

  def create
  end

  def top
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def twitter_params
    params.require( :twitter).permit( :content)
  end

  def twitter_id
    @twitter = Twitter.find(params[:id])
  end
end
