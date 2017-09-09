class AddDescriptionsToAd < ActiveRecord::Migration[5.1]
  def change
    add_column :ads, :description_markdown, :string
    add_column :ads, :description_short, :string
  end
end
