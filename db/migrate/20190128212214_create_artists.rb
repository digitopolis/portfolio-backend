class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :location
      t.string :media
      t.text :bio
      t.string :img_url

      t.timestamps
    end
  end
end
