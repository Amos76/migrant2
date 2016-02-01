class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :country_of_residence
      t.string :country_of_origin
      t.boolean :own_business
      t.boolean :starting_business
      t.text  :business_nature
      t.string  :services_interest_in
      t.boolean :promo_video
      t.text  :other
      t.string :phone_number
      t.string :contact_email
      
      t.timestamps
    end
  end
end
