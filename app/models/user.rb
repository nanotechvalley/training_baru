class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	#scope :senang, select("first_name, email, age, username")
				  #.where("first_name LIKE '%nana%'")
				  #.order("first_name desc")

	has_many :articles, :dependent => :destroy
	has_many :products, :dependent => :destroy
	belongs_to :country
	has_many :categories, :dependent => :destroy
	has_many :comments, :dependent => :destroy


	has_attached_file :user_picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :user_picture, :content_type => /\Aimage\/.*\Z/

	validates :username, :presence => true
			#:length => { :minimum => 5, :maximum => 10, 
			#:if => :if_username_ujang}

	#validates :first_name, :presence => true,
	                      # :length => { :maximum => 25},
	                       #:uniqueness => true,
	                       #:format => { :with => /([a-z]+)/ }


	validates :last_name, :presence => true
				#:length => { :maximum => 25}, :uniqueness => true, :format => { :with => /([a-z]+)/ }

	validates :email, :presence => true 
						#:uniqueness => true


	#validate :valid_name 

	#def if_username_ujang
		#if self.username == "uja"
			#return true
		#else
			#return false
		#end
	#end

	#def valid_name
		#if self.username == "martin"
			#self.errors[:username] << "martin jangan di sini"
		#end
	#end
end
