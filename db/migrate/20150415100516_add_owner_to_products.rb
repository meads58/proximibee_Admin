class AddOwnerToProducts < ActiveRecord::Migration
  def change
    add_column :products, :owner, :string
  end
end
