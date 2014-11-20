class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.integer :user_id
      t.string :tag
      t.integer :likes
      t.boolean :favorite

      t.timestamps
    end
  end
end
