class AddLikesCountToContributor < ActiveRecord::Migration[7.0]
  def change
    add_column :contributors, :likes_count, :integer, null: false, default: 0
  end
end
