class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :hours
      t.string :phone_number
      t.string :email
      t.string :cuisine

      t.timestamps
    end
  end
end
