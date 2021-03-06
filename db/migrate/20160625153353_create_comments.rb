class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :post, foreign_key: true
      t.references :author, foreign_key: true
      t.references :reply, index: true
      t.text :body

      t.timestamps
    end
  end
end
