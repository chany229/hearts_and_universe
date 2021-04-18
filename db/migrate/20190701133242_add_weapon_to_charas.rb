class AddWeaponToCharas < ActiveRecord::Migration[6.1]
  def change
    add_column :charas, :weapon, :string
  end
end
