class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :photo
      t.date :release_date
      
      t.timestamps
    end
  end
end
