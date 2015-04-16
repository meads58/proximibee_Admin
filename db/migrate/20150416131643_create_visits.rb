class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :timestamp
      t.belongs_to :beacon, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
