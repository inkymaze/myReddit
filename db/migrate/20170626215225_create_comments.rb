class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.integer :author_id, null: false
      t.integer :post_id, null: false
      t.integer :parent_comment_id

      t.timestamps
    end

    add_index :comments, :author_id
    add_index :comments, :post_id
  end
end
