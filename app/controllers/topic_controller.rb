class TopicController < ApplicationController
  def index
    @topics = Topic.all.includes(:favorite_uses)
  end
  def new
    
  end
end
