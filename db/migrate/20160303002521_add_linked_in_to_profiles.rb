class AddLinkedInToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :linked_in, :text
  end
end
