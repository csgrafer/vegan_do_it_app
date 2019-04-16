class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :ingredients
      t.string :directions
      t.integer :prep_time
      t.integer :servings
      t.string :user_name

      t.timestamps
    end
  end
end
