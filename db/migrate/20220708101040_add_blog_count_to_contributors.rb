class AddBlogCountToContributors < ActiveRecord::Migration[7.0]
  def change
    add_column :contributors, :blogs_count, :integer, default: 0, null: false
  end
end
