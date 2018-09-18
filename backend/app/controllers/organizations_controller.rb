class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
    # render json: @organizations
  end

  def new
    @organization = Organization.new
  end

  def show
    @organization = Organization.find(params[:id])
    # render json: @organization
  end

end
