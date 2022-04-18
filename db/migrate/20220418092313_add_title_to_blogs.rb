class AddTitleToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :title, :text, null: false
  end
end
