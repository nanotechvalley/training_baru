class Country < ActiveRecord::Base
	has_many :users

	validate :name, :presence => true
	validate :code, :presence => true

	validate :valid_country_code

	def valid_country_code
       if self.code == "ID" || self.code == "USA" || self.code == "CHN "
         return true
       else
         return false
       end  
    end       

end
