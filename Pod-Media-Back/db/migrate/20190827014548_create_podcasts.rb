class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :image
      t.integer :listens
      t.integer :likes

      t.timestamps
    end
  end
end
