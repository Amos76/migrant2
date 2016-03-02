class ChangePromoVideoToText < ActiveRecord::Migration
  def change
    remove_column :profiles, :promo_video
    add_column :profiles, :promo_video, :text
  end
end
