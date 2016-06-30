class Article < ActiveRecord::Base
	is_impressionable
	def self.search(search)
  		where("title LIKE ?", "%#{search}%") 
  		where("content LIKE ?", "%#{search}%")
	end
end
