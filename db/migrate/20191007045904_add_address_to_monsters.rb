class AddAddressToMonsters < ActiveRecord::Migration[5.2]
  def change
    add_column :monsters, :address, :string
  end
end
