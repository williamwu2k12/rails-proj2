class AddTitleToCats < ActiveRecord::Migration
  def change
    add_column :cats, :title, :string
  end
end
