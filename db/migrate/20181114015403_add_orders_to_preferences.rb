class AddOrdersToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :artist_sort_order, :string
    add_column :preferences, :song_sort_order, :string
  end
end
