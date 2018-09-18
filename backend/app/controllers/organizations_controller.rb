class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
    # render json: @organizations
  end

  def new
    @organization = Organization.new
  end

  def create
    # if User.create(params[:organization][:user]) #&& Organization.new(organization_params)
    #   @user = User.create(params[:organization][:user])
      if @organization = Organization.create!(organization_params)
      # @organization.user = @user
      # if @organization.save!
        # session[:user_id] = @user.id
        binding.pry
      # ActiveRecord validation errors can be captured here
        redirect_to organization_path(@organization)
      else
        redirect_to new_organization_path
    #   end
    # else
    #   # because user params were incorrect
    #   render :new
    end
  end

  def show
    @organization = Organization.find(params[:id])
    # render json: @organization
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :address_1, :address_2, :city, :state, :zip, :phone, :blurb, :about, :url, :donate_url, :info_email, :size, :image, :user_id, user: [:first_name, :last_name, :email, :username, :password, :password_confirmation])
  end

end
