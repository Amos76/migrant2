class UserApprovalsController < ApplicationController
  def index
    # Good god this is ugly
    if current_user && current_user.has_role?(:admin)
      approved_users = User.with_role(:approved).pluck(:id)
      rejected_users = User.with_role(:rejected).pluck(:id)
      @unapproved_users = User.where.not(id: approved_users)
        .where.not(id: rejected_users)
        .where.not(id: current_user.id)
        .paginate(:page => params[:page])
    else
      flash[:notice] = "You are not permitted on this page"
      redirect_to root_path
    end
  end

  def create
    user_id = params[:id].to_i
    user = User.find(user_id)
    approved = user.add_role(:approved)
    user.add_role(:admin) if params[:admin]
    if approved
      UserMailer.approved(user)
      redirect_to user_approvals_path
    else
      flash[:notice] = "There was an error while approving this user"
      redirect_to user_approvals_path
    end
  end

  def destroy
    user_id = params[:id].to_i
    user = User.find(user_id)
    user.add_role(:rejected)
    flash[:notice] = "This user has been rejected"
    redirect_to user_approvals_path
  end
end
