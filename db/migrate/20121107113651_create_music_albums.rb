class CreateMusicAlbums < ActiveRecord::Migration
  def change
    create_table :music_albums do |t|
      t.string :name
      t.string :image_cover

      t.timestamps
    end
  end
end
