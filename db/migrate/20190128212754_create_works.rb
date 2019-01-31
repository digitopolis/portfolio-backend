class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :title
      t.string :media
      t.integer :year
      t.text :statement
      t.string :img_url
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
