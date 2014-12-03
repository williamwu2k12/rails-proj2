class AddCatidToFavorites < ActiveRecord::Migration
  def change
  	add_column :favorites, :catid, :integer
  end
end
