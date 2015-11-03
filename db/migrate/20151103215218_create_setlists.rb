class CreateSetlists < ActiveRecord::Migration
  def change
    create_table :setlists do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :edit_key

      t.timestamps null: false
    end
  end
end
