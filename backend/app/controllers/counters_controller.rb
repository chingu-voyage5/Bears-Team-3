class CountersController < ApplicationController
  def index
    @counter = Counter.first
    render json: @counter
  end
end
