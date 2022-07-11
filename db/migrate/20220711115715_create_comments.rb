class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :contributor, null: false, foreign_key: true
      t.text :message, null: false

      t.timestamps
    end
  end
end
