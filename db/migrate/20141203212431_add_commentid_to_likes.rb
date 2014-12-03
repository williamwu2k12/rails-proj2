class AddCommentidToLikes < ActiveRecord::Migration
  def change
  	add_column :likes, :commentid, :integer
  end
end
