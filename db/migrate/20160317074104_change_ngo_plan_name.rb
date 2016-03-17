class ChangeNgoPlanName < ActiveRecord::Migration
  def change
    plan = Plan.find_by_name("Academic/NGO")
    plan.name = "Expert"
    plan.save
  end
end
