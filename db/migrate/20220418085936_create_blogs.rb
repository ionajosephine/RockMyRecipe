class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.references :contributor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
