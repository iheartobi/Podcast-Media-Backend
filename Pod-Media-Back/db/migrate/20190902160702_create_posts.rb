class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :content, default: ""
      t.integer :likes, default: 0
      t.integer :user_id
      t.integer :friend_id
      
      
      t.timestamps
    end
  end
end
