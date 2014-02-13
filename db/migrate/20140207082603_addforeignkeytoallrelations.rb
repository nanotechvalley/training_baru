class Addforeignkeytoallrelations < ActiveRecord::Migration
  def change
  	add_column :products, :user_id, :integer
  	add_column :users, :country_id, :integer
  	add_column :categories, :user_id, :integer
  	add_column :comments, :user_id, :integer
  	add_column :comments, :article_id, :integer


  end
end
