class AddIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :user_id, :integer
    rename_column :recipes, :user_name, :username
  end
end
