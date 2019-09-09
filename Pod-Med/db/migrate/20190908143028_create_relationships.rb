class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :user
      t.references :friend

      t.timestamps
    end
  end
end