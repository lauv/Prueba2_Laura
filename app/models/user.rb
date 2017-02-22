class User < ApplicationRecord
	validates :name, presence: true
	validates :email, uniqueness: true
	before_save :capitalize_name

	def capitalize_name
		self.name = name.downcase.titleize
	end
end
