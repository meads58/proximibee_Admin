class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :location

      t.timestamps null: false
    end
  end
end
