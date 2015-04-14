class AddBeaconIdToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :beacon, index: true, foreign_key: true
  end
end
