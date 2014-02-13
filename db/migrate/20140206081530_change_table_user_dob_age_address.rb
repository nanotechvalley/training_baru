class ChangeTableUserDobAgeAddress < ActiveRecord::Migration
  def change
  	add_column :users, :date_of_birth, :datetime
  	add_column :users, :age, :integer
  	add_column :users, :address, :string
  end
end
