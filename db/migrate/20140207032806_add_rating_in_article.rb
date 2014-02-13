class AddRatingInArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :rating, :integer
  end
end
