class AddNullToRecipes < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :title, :string, null: false
  end
end
