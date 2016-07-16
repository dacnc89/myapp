class Micropost < ActiveRecord::Base
		belongs_to :user
		validates :content, length: {maximum: 140},presence: true
	searchable do
		text :user, boost => 2
		text :content
	end
end
