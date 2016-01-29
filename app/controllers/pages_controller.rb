class PagesController < ApplicationController

  def home
    @ent_plan = Plan.find(4)
    @academic_plan = Plan.find(5)
    @pro_plan = Plan.find(3)
  end
  
  def about
  end

  def team
  end
  

end
