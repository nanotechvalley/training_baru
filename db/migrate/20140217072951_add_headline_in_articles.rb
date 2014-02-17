class AddHeadlineInArticles < ActiveRecord::Migration
  def change
 add_column :articles, :headlines, :text
  end


end
