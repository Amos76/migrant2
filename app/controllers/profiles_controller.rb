class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :only_current_user
  
    def new
        # form where a user can fill out their own profile.
        @user = User.find( params[:user_id] )
        @profile = Profile.new
    end
    
    def create 
      @user = User.find( params[:user_id] )
      @profile = @user.build_profile(profile_params)
      if @profile.save
        redirect_to post_sign_up_path
      else
        render action: :new
      end
    end
  
    def edit
      @user = User.find( params[:user_id] )
      @profile = @user.profile
    end
    
    def update
      @user = User.find( params[:user_id] )
      @profile = @user.profile
      if @profile.update_attributes(profile_params)
        flash[:success] = "Profile Updated!"
        redirect_to user_path( params[:user_id] )
      else
        flash[:error] = @profile.errors.full_messages.join (", ")
        render action: :edit
      end
    end
  
  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :avatar, :country_of_residence, :country_of_origin, :own_business, :starting_business, :business_nature, :services_interest_in, :promo_video, :other, :phone_number, :contact_email, :linked_in, :business_name, :business_website)
    end
    
    def only_current_user
      @user = User.find( params[:user_id] )
      redirect_to(root_url) unless @user == current_user
    end
end
