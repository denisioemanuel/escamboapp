class Category < ApplicationRecord
	#Associations
	has_many :ads

	#Validations
	validates_presence_of :description

	#scope
	scope :order_by_description, -> { order(description: :asc) }
end
