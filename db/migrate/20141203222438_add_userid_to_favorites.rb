class AddUseridToFavorites < ActiveRecord::Migration
  def change
  	add_column :favorites, :userid, :integer
  end
end
