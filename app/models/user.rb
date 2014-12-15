class User < ActiveRecord::Base
	has_one :user_profile
	has_many :posts
	def name
		[attributes['first_name'], attributes['last_name']].join(' ')
	end
end

