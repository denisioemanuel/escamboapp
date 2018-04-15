class AddStatusToAd < ActiveRecord::Migration[5.1]
  def change
    add_column :ads, :status, :integer, defatult: 0
  end
end
