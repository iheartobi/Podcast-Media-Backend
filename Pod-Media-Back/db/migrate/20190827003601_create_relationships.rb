class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.bigint :friend_id, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
