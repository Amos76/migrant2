class UserApprovalsController < ApplicationController
  def index
    # Good god this is ugly
    approved_users = User.with_role(:approved).pluck(:id)
    @unapproved_users = User.where.not(id: approved_users)
      .paginate(:page => params[:page])
  end

  def create
    user_id = params[:id].to_i
    user = User.find(user_id)
    approved = user.add_role(:approved)
    if approved
      UserMail.approved(user)
      redirect_to user_approvals_path
    else
      flash[:notice] = "There was an error while approving this user"
      redirect_to user_approvals_path
    end
  end
end
