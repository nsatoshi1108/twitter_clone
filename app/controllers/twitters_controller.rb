class TwittersController < ApplicationController

  before_action :twitter_id, only: [:show, :edit, :update, :destroy]

  def index
    @twitters = Twitter.all
  end

  def new
    if params[:back]
      @twitter = Twitter.new(twitter_params)
    else
      @twitter = Twitter.new
    end
  end

  def confirm
    @twitter = Twitter.new(twitter_params)
    render :new if @twitter.invalid?
  end

  def create
    @twitter = Twitter.new(twitter_params)
    if @twitter.save
      redirect_to twitters_path
    else
      render 'new'
    end
  end

  def top
  end

  def show
  end

  def update
    if @twitter.update(twitter_params)
      redirect_to twitters_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @twitter.destroy
    redirect_to twitters_path
  end

  private
  def twitter_params
    params.require( :twitter).permit( :content)
  end

  def twitter_id
    @twitter = Twitter.find(params[:id])
  end
end
