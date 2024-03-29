class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :micropost_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :likes, :micropost_id
    add_index :likes, :user_id
    add_index :likes, [ :micropost_id, :user_id ], unique: true
  end
end
