class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :author, foreign_key: true
      t.text :body

      t.timestamps
    end
    add_index :posts, [:author_id, :created_at]
  end
end
