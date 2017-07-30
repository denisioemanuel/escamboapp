class Ad < ApplicationRecord
  belongs_to :category
  belongs_to :member
  monetize :price_cents
end
