class AddWeaponToCharas < ActiveRecord::Migration[5.2]
  def change
    add_column :charas, :weapon, :string
  end
end
