class PagesController < ApplicationController

  def home
    @ent_plan = Plan.find_by_name('Entrepeneur')
    @academic_plan = Plan.find_by_name('Academic/NGO')
    @pro_plan = Plan.find_by_name('Corporate')
  end
  
  def about
  end

  def team
  end
  
  def membership
    @ent_plan = Plan.find(4)
    @academic_plan = Plan.find(5)
    @pro_plan = Plan.find(3)
  end

end
