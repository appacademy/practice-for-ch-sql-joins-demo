class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.bigint :author_id, null: false
      t.bigint :post_id, null: false
      t.bigint :parent_comment_id

      t.timestamps
    end
  end
end
