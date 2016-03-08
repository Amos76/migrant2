class AddBusinessNameToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :business_name, :string
    add_column :profiles, :business_website, :string
  end
end
