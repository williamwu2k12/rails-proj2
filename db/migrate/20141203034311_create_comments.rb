class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :userid
      t.text :content
      t.integer :likes

      t.timestamps
    end
  end
end
