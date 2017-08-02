class Category < ApplicationRecord
	validates_presence_of :description

	#scope
	scope :order_by_description, -> { order(description: :asc) }
end
