class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.integer :mixtape_id
      t.integer :song_id
      t.integer :order

      t.timestamps
    end
  end
end
