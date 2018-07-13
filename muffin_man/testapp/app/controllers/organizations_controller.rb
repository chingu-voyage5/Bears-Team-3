class OrganizationsController < ApplicationController

  def show
    @organization = Organization.find(params[:id])
    render json: @organization
  end

end
