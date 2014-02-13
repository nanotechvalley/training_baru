class Category < ActiveRecord::Base
	has_many :products
	belongs_to :user
	has_many :products, :through => :product_categories
	has_many :product_categories
	belongs_to :product
end
