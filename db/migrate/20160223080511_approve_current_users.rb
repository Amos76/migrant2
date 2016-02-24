class ApproveCurrentUsers < ActiveRecord::Migration
  def change
    User.find_each do |user|
      user.add_role :approved
    end
  end
end
