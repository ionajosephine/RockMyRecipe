class AddSocialToContributors < ActiveRecord::Migration[7.0]
  def change
    add_column :contributors, :twitter, :text, null: true
    add_column :contributors, :instagram, :text, null: true
    add_column :contributors, :facebook, :text, null: true
    add_column :contributors, :pinterest, :text, null: true
    add_column :contributors, :website, :text, null: true
    add_column :contributors, :tiktok, :text, null: true
    add_column :contributors, :bio, :text, null: true
  end
end
