class Category < ApplicationRecord
	include FriendlyId
	friendly_id :description, use: :slugged

	#Associations
	has_many :ads

	#Validations
	validates_presence_of :description

	#scope
	scope :order_by_description, -> { order(description: :asc) }
end
