class AddShowIdToBeacons < ActiveRecord::Migration
  def change
    add_reference :beacons, :show, index: true, foreign_key: true
  end
end
