class RenameColumnUserComment < ActiveRecord::Migration
  def change
  	rename_column :users, :user_name, :username 
  	rename_column :comments, :body, :content
  end
end
