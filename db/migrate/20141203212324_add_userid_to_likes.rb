class AddUseridToLikes < ActiveRecord::Migration
  def change
  	add_column :likes, :userid, :integer
  end
end
