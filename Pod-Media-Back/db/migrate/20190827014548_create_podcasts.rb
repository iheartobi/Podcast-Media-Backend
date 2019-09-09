class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :publisher
      t.string :image
      t.string :thumbnail
      t.string :listennotes_url
      

      t.timestamps
    end
  end
end
