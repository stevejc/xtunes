class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :song_id
      t.decimal :paid
      t.date :purchased_date
      
      
      t.timestamps
    end
  end
end
