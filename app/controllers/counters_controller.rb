class CountersController < ApplicationController
  def index
    @counter = Counter.first
  end
end
