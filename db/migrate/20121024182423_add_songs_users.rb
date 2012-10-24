class AddSongsUsers < ActiveRecord::Migration
    def change
      create_table :songs_users, :id => false do |t|
        t.integer :song_id
        t.integer :user_id
      end
    end
  end
