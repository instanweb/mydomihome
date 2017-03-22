class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.integer :user_id
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
