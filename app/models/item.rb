class Item < ApplicationRecord
	belongs_to :user, optional: true

	scope :size_x, ->(equis) {where(size: equis)}
	scope :unassigned, ->{where(user_id: nil)}
end
