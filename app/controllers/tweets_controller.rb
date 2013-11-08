class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order('id DESC')
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(params[:tweet])
    if @tweet.save
      flash[:success] = 'Success!'
      redirect_to :action => :index
    else
      flash.now[:error] = 'Tweet length error!'
      @tweets = Tweet.order('id DESC')
      render :action => :index

    end
  end
end
