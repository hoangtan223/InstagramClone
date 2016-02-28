class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :user_id
      t.integer :photo_id

      t.timestamps null: false
    end
    add_index :comments, :photo_id
  end
end
