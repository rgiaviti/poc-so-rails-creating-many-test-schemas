class CreateComments < ActiveRecord::Migration[6.1]
  def up
    create_table :comments do |t|
      t.references :article, null: false
      t.text :body, null: false

      t.timestamps
    end

    add_foreign_key :comments, :articles
  end

  def down
    remove_foreign_key :comments, :articles
    drop_table :comments
  end
end
