module UsersHelper

    def services_interest_in_icon
        if @user.profile.services_interest_in == "Mentorship"
            "<i class='fa fa-user-plus'></i>".html_safe
        elsif @user.profile.services_interest_in == "Mentee"
            "<i class='fa fa-user'></i>".html_safe
        elsif @user.profile.services_interest_in == "Training"
            "<i class='fa fa-lightbulb-o'></i>".html_safe
        else @user.profile.services_interest_in == "Partnership"
            "<i class='fa fa-users'></i>".html_safe
                
        end
    end


end