class AddCatidToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :catid, :integer
  end
end
