class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    t.string :name
    t.string :price
    t.string :stock
    t.text :description
    t.timestamps
    end
  end
end
