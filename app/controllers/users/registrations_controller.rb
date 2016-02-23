class Users::RegistrationsController < Devise::RegistrationsController

  before_filter :select_plan, only: :new

  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 3
          resource.save_with_payment
        else
          resource.save
        end
        AdminMailer.new_sign_up(resource).deliver
      end
    end
  end

  private

  def select_plan
    plan_ids = Plan.pluck(:id)
    unless plan_ids.include?(params[:plan].to_i)
      flash[:notice] = "Please select a membership plan to sign up."
      redirect_to root_url
    end
  end
end
