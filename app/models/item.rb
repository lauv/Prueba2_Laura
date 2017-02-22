class Item < ApplicationRecord
	belongs_to :category
	belongs_to :user, optional: true
	after_destroy :delete_category

	scope :size_x, ->(equis) {where(size: equis)}
	scope :unassigned, ->{where(user_id: nil)}

	def delete_category
		a = Item.all.where(category_id: self.category_id)
		if a.length == 0
			c = Category.find_by(id: self.category_id)
			c.destroy
		end 
	end
end
