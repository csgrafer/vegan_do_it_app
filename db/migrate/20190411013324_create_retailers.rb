class CreateRetailers < ActiveRecord::Migration[5.2]
  def change
    create_table :retailers do |t|
      t.string :name
      t.string :address
      t.string :hours
      t.string :phone_number
      t.string :email
      t.string :specialty

      t.timestamps
    end
  end
end
