class CreateProfileMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :profile_members do |t|
      t.string :first_name
      t.string :second_name
      t.date :birthdate

      t.timestamps
    end
  end
end
