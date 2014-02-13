class RenameColumnBody < ActiveRecord::Migration
  def change
  	rename_column :articles, :body, :description
  end
end
