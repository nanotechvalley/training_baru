class RemoveColumnUserBioprofile < ActiveRecord::Migration
  def change
  	remove_column :users, :bio_profile
  end
end
