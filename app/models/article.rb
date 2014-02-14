class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments, :dependent => :destroy

	validates :title, :presence => true, :uniqueness => true


	has_attached_file :article_picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :article_picture, :content_type => /\Aimage\/.*\Z/
end
