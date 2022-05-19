class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :post, null: false, foreign_key: true
      # Since parent_comment_id can be NULL, don't set it with a foreign key
      # constraint
      t.references :parent_comment

      t.timestamps
    end
  end
end