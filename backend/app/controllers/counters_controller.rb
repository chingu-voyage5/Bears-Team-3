class CountersController < ApplicationController
  protect_from_forgery

  def index
    @counter = Counter.first
    render json: @counter
  end

  def create
    @counter = Counter.first.increase_count
    render json: @counter
  end
end
