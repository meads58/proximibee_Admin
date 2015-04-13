class AddBeaconIdToShow < ActiveRecord::Migration
  def change
    add_reference :shows, :beacon, index: true, foreign_key: true
  end
end
