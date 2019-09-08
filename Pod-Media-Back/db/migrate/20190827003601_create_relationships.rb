class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :friend
      t.references :user

      t.timestamps
    end
  end
end
