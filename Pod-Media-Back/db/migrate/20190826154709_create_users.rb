class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :img_url, default: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1PkhrZ3e9kGje7Y4b7kqMxGJYacu8uIzvhRTAqBNQPW40t8_5qw"
      t.string :notes, default: ""
      t.integer :likes, default: 0
      t.integer :follows, default: 0
      t.integer :followers, default: 0
      t.string :email, default: ""

      t.timestamps
    end
  end
end
