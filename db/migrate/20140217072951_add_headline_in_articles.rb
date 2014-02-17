class AddHeadlineInArticles < ActiveRecord::Migration
  def change
 	add_column :articles, :headline, :boolean
  end
end
