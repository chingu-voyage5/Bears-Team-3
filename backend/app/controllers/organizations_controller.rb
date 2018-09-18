class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
    # render json: @organizations
  end

  def new
    @organization = Organization.new
  end

  def create
    if @organization = Organization.create(organization_params)
      session[:user_id] = @user.id

      # ActiveRecord validation errors can be captured here
      redirect_to organization_path(@organization)
    else

      render :new
    end
  end

  def show
    @organization = Organization.find(params[:id])
    # render json: @organization
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :address_1, :address_2, :city, :state, :zip, :phone, :blurb, :about, :url, :donate_url, :info_email, :size, :image, :user_id, user: [:username, :password, :password_confirmation])
  end

end
