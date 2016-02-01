class ProfilesController < ApplicationController
    def new
        # form where a user can fill out their own profile.
        @user = User.find( params[:user_id] )
        @profile = Profile.new
    end
    
    def create 
      @user = User.find( params[:user_id] )
      @profile = @user.build_profile(profile_params)
      if @profile.save
        flash[:success] = "Profile Updated!"
        redirect_to user_path( params[:user_id] )
      else
        render action: :new
      end
  end
  
  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :country_of_residence, :country_of_origin, :own_business, :starting_business, :business_nature, :services_interest_in, :promo_video, :other, :phone_number, :contact_email,)
    end
end
