class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
    # render json: @organizations
  end

  def new

    if !session[:user_id]
      @user = User.new
      @organization = Organization.new

      render 'users/new'

    else
      @organization = Organization.new
      @user = User.find(session[:user_id])

      redirect_to new_organization_path
    end
    # if user has been created:
      # @user = User.find(params[:id])
      # @organization = Organization.new
    # else
    # @user = User.new
    # @organization = Organization.new
  end

  def create
    # first create an admin user and then they create the organization account
    # if User.create(params[:organization][:user]) #&& Organization.new(organization_params)
    #   @user = User.create(params[:organization][:user])
      if @organization = Organization.new(organization_params)
        @organization.user_id = User.create!()
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
    params.require(:organization).permit(:name, :address_1, :address_2, :city, :state, :zip, :phone, :blurb, :about, :url, :donate_url, :info_email, :size, :image, :user_id)
    # users: [:first_name, :last_name, :email, :username, :password, :password_confirmation]
  end

end
