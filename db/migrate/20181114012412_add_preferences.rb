class AddPreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artists 
      t.boolean :allow_create_songs
      
      t.timestamps null: false
    end
  end
end
