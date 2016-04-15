class PagesController < ApplicationController

  before_action :load_plans, only: [:home, :membership]

  def home
  end

  def about
  end

  def team
  end

  def post_sign_up
  end

  def membership
  end

  private

  def load_plans
    @ent_plan = Plan.find_by_name('Entrepreneur')
    @academic_plan = Plan.find_by_name('Expert')
    @pro_plan = Plan.find_by_name('Corporate')
  end

end
