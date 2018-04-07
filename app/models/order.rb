class Order < ApplicationRecord

  enum status: [:requested, :waiting, :analysing, :paid, :avaliable, :dispute, :returned, :canceled, 
    :debited, :temporary_retention]

  #Assossiations
  belongs_to :ad
  belongs_to :buyer, class_name: "Member"
end
