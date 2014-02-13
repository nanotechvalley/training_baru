class Product < ActiveRecord::Base
	#attr_accessible :name, :price, :description

	belongs_to :user
	belongs_to :category
	has_many :categories, :through => :product_categories
	has_many :product_categories
	belongs_to :category

	validate :price, :numericality => true
end
