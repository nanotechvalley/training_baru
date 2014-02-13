class ChangeColumnCountryArticle < ActiveRecord::Migration
  def change
  	change_column :countries, :code, :string
  	change_column :articles, :body, :text
  end
end
